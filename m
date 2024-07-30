Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D3F195FCA
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722332754; cv=none; b=RjSOIf0ovZLUSN0IyemXhwBKlfzYuAtJxJ0uTYo1d94b3NFCjluRh7FHhIcwCbLZENyiyYbJBXvpnYla9LKO+akRwyHhKPyVeVOpBRX15KaVcYYMZ34BTgnJ/hsnN+mDL1KPN/WB+rZ8JAAeIIjz3wkdWFBAwffZC8UkWjc4J/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722332754; c=relaxed/simple;
	bh=TipZ9bOl5cOBjRpknPaV2+uSY1WhGEbbrdd17G6A84E=;
	h=To:Subject:From:Message-Id:Date; b=eOfgt0UpvC0Sne9YXEOBcC+fEGjEimQAez7M8FovQYkatPJAWBkPVwIPbwY/pf+X5FUVGboalyocQWJUXztm6bVvT/gWJjMi+55bvmCEvYDmzV0CtWljDnWrzIASO4U9eSrJY8LwaRgoCz0r5Kx2d/gKb00amzSWfhS7LwI1ZQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxwlN3D5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxwlN3D5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD3C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722332753;
	bh=TipZ9bOl5cOBjRpknPaV2+uSY1WhGEbbrdd17G6A84E=;
	h=To:Subject:From:Date:From;
	b=QxwlN3D5udkXTgyPnh4W5k2h+UqNO5yO4LfsOPFyB5Z2d+8vQDkhzIe8AAjK42g/X
	 AKyS33CN4BUnNWe4231SREP6D9APOYkM6vaWCC4hL8MY5U9po2bNY/ussbrQggoxZQ
	 iC73QIOe+ighys/wrW6hFTm3oS3GOJB/4HL1B85P3MHCq3uO9KTVXMqyAl77Rp4UMO
	 XaKgoFevorDzZGs6fGfERSUspCp7ONbb18m6wdDubkLh4jOuDQ2b+YYqNCt5/9Z8Do
	 +3vSxXALoKEbJcKrNAfQXgbYlHrV+tsVzGiL4s2T+/2THnS7pYEFmKFyfQd6H6n4Qb
	 oFnUt19UdbQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F59C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172233275358.3891.11237137163853175470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e432d72de4b670b73500d418227a142d700b273d165fd086e99095da11ad8753
Date: Tue, 30 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722332753
