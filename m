Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51164AD5A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738518354; cv=none; b=Wsn22vITsjNy1Gv7lHATu1SSVYpmopKeOHo88DzZwXJdbR7ApCeP/8vhWb4hhhJFvePJ24bkDHIJ8Vz0lHDo7CI46zwhOPpcqT3QxdaomNgyOoMYu+e3cg6CMRpvcW7sgL18WdyZpGNpOCxhojlOli9ATmd8nEnesuZs30rRllw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738518354; c=relaxed/simple;
	bh=Uclw0ZsUoHU1TTjQvTs5EZPllqrgJhAC0sUGrWkxdiM=;
	h=To:Subject:From:Message-Id:Date; b=RQIVgoguWnh/SgpxW5KSvrKTkQEWMzGvGf375Vvokb9ryf5PRrRVXMvbwgki4nHMClo9FajFRbkWq1rkqfJSdWRlskl/dZKZvlaylLBAeAiZoBYoTg5KlP0f5oSpJAkdU6fV21Ki15qIJVccRr3Y3G8pVg39MIsPduYC4kiv+2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsdzRvES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsdzRvES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B00C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738518353;
	bh=Uclw0ZsUoHU1TTjQvTs5EZPllqrgJhAC0sUGrWkxdiM=;
	h=To:Subject:From:Date:From;
	b=QsdzRvESjgV8/FHyXDLz8hk2hT5CGFR4U1ma7gLGUo/Byq5r/m4WyL3rFAoB3k4TT
	 PuFDlhVSA/DHUQ1WibQ1QMxL/jlWCnaRLuk44mD6k2PKihBhW9Sl9T++lTUnU6ML5T
	 UsrbJFvyPbOVIP8DQ6opCHfTu/ymYs8wBCUr34QNPMD/OKewhG6rTnhw2mWzlpUbQn
	 37X5IUdgBsYpEwDrl2zkbtJZDepK/Vb2Y+lElefH/QEH9X6VAwho6tc+BFFLNUN9Hr
	 sp8gfZHx11vIsjN4T9XcK58wDK/TqgVPFqwbKIB9sovUnZFcaVf/odHI/7nxiyPIjB
	 xXXdpT4qCJQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B17EC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851835359.12348.15675379197355972733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea863f808e576973928f76f4c71af3fe717d92b67b3062629532231bbe5208b
Date: Sun, 02 Feb 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738518353
