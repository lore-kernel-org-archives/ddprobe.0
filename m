Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808894CEE71
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791472234; cv=none; b=D92jzhifESK5VXQ7z7UmHyoj5RPWN5IJ5FPbj1Bwg9SgNRCawSekC62SGviCLrQLHtvOn37wj5Gf3Y8ajWBWCC+HifqQ2Yaz0GkZwLh9hvQlyJosKA2kDRBPq/GKuj6G/yWpFSAFZqNOUZ+2LZ9UBf8+SVRcRtFX3NgxOmJNAe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791472234; c=relaxed/simple;
	bh=jchjfJUaWttbSlSmH3pKBKcg2mxciu9d6UfiYUbXF+M=;
	h=To:Subject:From:Message-Id:Date; b=t4uFBvS4zFEBjsP2qYeCDGTswvOcj5QOsdsfEACmPCVczpQ9bqX8APtZ9b0B4X9c2yeMk9i37Z05EL/AMhJ1CGVVOsz3fW64zAPfFAJQjJWysw6mtYfZBCcS67W/YcJuFpS+txa5AN6DLPQi/yezhDK2HqkilALSDGV3oDh7B/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jqtt9AXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jqtt9AXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF4FC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791472233;
	bh=jchjfJUaWttbSlSmH3pKBKcg2mxciu9d6UfiYUbXF+M=;
	h=To:Subject:From:Date:From;
	b=Jqtt9AXLxG4miCDVs3q5wUiM1yHyP0NeplT23IMO8ic2okAkek1iaMNDBy07s6Fqd
	 tbrnRP3ISqTeJ4AowOE2gFIwRgXESPMATxeEUT9oyrx4fv5ctGK70YOutZPbneBpB9
	 fSDm65BH0B3sFKpx0QnF7uoSNfP2QlmtsoFyvkIOSCwi8jnzx1iDNMLqvL/wELR22L
	 5bOeZeNhrAk7fTvqFWaLsFz0AXgb6kkLv5+/5Qoa0m8lxXqhbq1efD/h0vsWZXUfA2
	 1qh+maCTGugWCfxFkyGqr9OMft5P07e0+QBgj/qi5so5S36NpYxi+eJXeNWhURpDHc
	 couxu2q+1NOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC25CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147223370.6681.7566085179084376827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2a3e51ce28918786d650330bbb457ee1d77b8d71643f8ab6573179bf7edf00
Date: Thu, 08 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791472233
