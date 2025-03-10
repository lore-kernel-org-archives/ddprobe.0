Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540DF22FF42
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741631334; cv=none; b=FyWv+CJvmUBni3GqF/t5ynEEu62lz2HJqSTMRKCeyERNu+EKWkKnkIg4XzrAKC0gXmb+U0tp+4jN0deZqlYOX7CwVA607ydoSahqGOJStGq9ed5g+eMPuknmgJeXUpR1RSP8JNAtcuEMzAjzuKO1VMnncYzukYsJ6IMVp5UDJCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741631334; c=relaxed/simple;
	bh=ORdfFENLGvNIvDJbRPNIup3el6f9CCpcJy8y2+3cK7w=;
	h=To:Subject:From:Message-Id:Date; b=oC3t4LKFr9xf+rhPGFlfuVC5Yy65RGePKufrShDdRvSdQkp7mqg4waxsVQkyjJlPNJfnh4AnRtsRMxDpxSD8Y8GxNvPn+hYG+2yCaeNoqj+R2/74F4Vmth+wcqd/ihePxCRt31WaFtgfVg0hL8IduGsQqWyGhuUIeODiHkCC3zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPsIo4eJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPsIo4eJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F9DC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741631333;
	bh=ORdfFENLGvNIvDJbRPNIup3el6f9CCpcJy8y2+3cK7w=;
	h=To:Subject:From:Date:From;
	b=SPsIo4eJSQaN9KgDe/QXVNglZ0ePO7GI/hbf4KBhEPuvcz7TuIXWL9xrWj15uV7H0
	 hbsQVgL3NG+Szv+RoyUrLlmX4OZ7quy+db7V0NFZ2wiDE7ARRrt5z4Q39iXUtnQZ57
	 1nSCioY+zbto/MwOJmG5feKBsM9nNw/4lceRSqHV9VZ8vPDTVLx1aYP1h90ulXzUrS
	 Gqy75ou+G7qTetrCNbS4Kzc/LyxzvpgNESUHCGKb6ewtHgnyIP22yj6O+8giOXYiF+
	 JPVVRmlm9GsPR5Bk0Q6+kZDVoyPbnnDU6y16HVZG8lKqlcL+RsK+tThBogoEVCKBJs
	 wrDx1GDDc/EiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C69EC282EC
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174163133363.13276.11358352041583208477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff3ea07291932d7a0c004162525dffe580ef45a3bce972e40bfdbf1fe019973
Date: Mon, 10 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741631333
