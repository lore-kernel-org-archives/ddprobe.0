Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4374220E030
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754042994; cv=none; b=ci36TELUfZgye8ijW/XkPKMoK48l+EpgW45EaGjH++AFNfFbpTyIPL3dhQMIYd3Yl9yT76Xc9DCL4OtR0ZZ3VkO6VGo971MPksJ8L+QtWsJiUpmddKTjbQaTFrCnW7/5zcBZhYEAjCe5YeT2y8A11cJWS7MmHhH6aLfnygt2EaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754042994; c=relaxed/simple;
	bh=6ZMtw1NEgY6JrxVfoD/yktU5Sy9Sr+Fl7rB/vI/mJNc=;
	h=To:Subject:From:Message-Id:Date; b=m1LHkTaqUVR6HNt1vdwF4FliQs3ZqVh5mkyhvTeAORLlcj4eblZqsU8q7Ix+zPLrv2ql4Ivrfom02EXURjaC/JZYytPcIA+XMILV3d6TPsPkU7fFgcB2SBbqNcUsXi65YZeTtdWJzmtfZ/sDKpKyEounpeAglFVoMyLhSmoCfbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhAMxCCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhAMxCCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754042993;
	bh=6ZMtw1NEgY6JrxVfoD/yktU5Sy9Sr+Fl7rB/vI/mJNc=;
	h=To:Subject:From:Date:From;
	b=XhAMxCCUU6rz5qmPDIJjBZ9oxutTqu/4Rer3tdKRtWalX1Vhn6Szzjm2CNf5aJGSL
	 AVZ64vHtCmNec4tj+fZzm2TazOCKmCYSLTZtoVPyQ77JgaZ0QkrZZZ2LMwO7iImD2t
	 MRXd0iaw7V3zeERnzu0oM++W6PqcQllAnkwj7CyfSexWOC/CGzMsYGxt3PBU4ROKv5
	 P+WzpH6TfBMIjf+le/xws2Ax1qMpiBollggivBpnruhK/GB/CyC9mXLrvZPxQW9+Hy
	 1BYJZsvyP79ftWG5V0MFiCHDJpUCqVmTt+gYfsTHvdoF8+GcvMhVb/7arydaRaSxef
	 6LEvCFUoe4+Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90009C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404299358.30984.2246980964461764943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec69d75ddb436450374d18b4a720a16d255184e93db0660ab00c6d12719d9005
Date: Fri, 01 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754042993
