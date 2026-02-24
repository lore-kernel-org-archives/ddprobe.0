Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67621EB9F2
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771898693; cv=none; b=OFwYQGHAvAh+3Ios1C+CI2w42udcQLBhOG4aQ9YbPm1loMhPDVU5mNJ1SQliKPVD1JkYw/V3Auf5pEAiEWwoCfyDWn0VD2NJhd5PPH+kcLGUKlNWU/nsj/DiFaKiXOjD18t+KHZA9x//FSi0W28ooJPredULatCXWGSZ3MqNPGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771898693; c=relaxed/simple;
	bh=5Od9fC8L1KudCtLkJHSC89cjOyLqsXG7ifnw0gpj7V4=;
	h=To:Subject:From:Message-Id:Date; b=AJmdSOBXIqHwmKv9Oko35h96OuEuekY6KJW0YLx5n5fpYPPgAdtYQyyJuFp4IZZ1hz84VEtWqfAmN/iceIK3dQsi9qMcWRw8jqAhukQ5vLLQduJJ3M9jrhlDXxA1DDelBeRcRUmjVv7wFhcgdww4QhWeXQKOX6pyvFQFBhkTOhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5VpO57g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5VpO57g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F23C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771898693;
	bh=5Od9fC8L1KudCtLkJHSC89cjOyLqsXG7ifnw0gpj7V4=;
	h=To:Subject:From:Date:From;
	b=F5VpO57g/eH0sDyDEUrECdyQXOoNNUR8Z1sV1lFtGCtZwtbgkrbYRlGp///hvHhnK
	 swz+cqKn6D6NnKL97wBq4DPxKO4Pu94GbQ1cz6CQLhaQMBhSrEiO9EQCxwHS3+m0CG
	 udCBpUgnyfkhD04Nu1d+924qAPJorP8VDALPJ6LNBbrmLu/0bAlRegQpnq+D7dsDyZ
	 +Kwu2jq7YcV1B+79JxSmYtj/fe3NDVkNvZON8ZT1iH6Hyj8ih231QP24GBBIUFmo7S
	 gb7/hLy1hkFiSFXktoZOBl2dgu4ilKuKJDunvCpMgeHaZoPFRmVSTU7/8S2Uo2V7Go
	 TJyDdbmSaDpCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90781EFB7E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189869358.16337.9653447290268514602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9bc6f2cbd0c38a8dc10e8384925651471ade2701c9637727a16a285b0a5cff
Date: Tue, 24 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771898693
