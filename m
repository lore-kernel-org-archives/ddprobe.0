Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204C818872A
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760308794; cv=none; b=txWE/sOPTVgCrrlQQAW532Qbsd32dFohNnbi5dqm/UHWdPcklGKZkMyl9iR+j4jumfNrHnVcKRA29ouj3wcl5pJ9X0ZJHKMPHFpKIkX3vfRM4fswbghDKZbV5Fl7lz3wsv2FaZRl4pyDzygzbuITv9tvbZ/FDydELGOYmwaTBjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760308794; c=relaxed/simple;
	bh=ZMmKfPz9TLunxqA5NJ4jXBj+gImU1Wi0GufmYEkRx7I=;
	h=To:Subject:From:Message-Id:Date; b=QTMEj7BGDz5RJugMidA03IMEPbZyG33hrtjKSiSkon3/TMHTjBHlJasV+k2x/pw0VbZ2DhKUFVn/jK6+EI2/I54brEVuJsbb4nakFpFs63LbEuMkZbQd1kA3jNANxjpPEHJ6YJ6F+py9LPJFyOsBWvldQbj4ZOVul6HHlENGbTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s65hv7Qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s65hv7Qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D64C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760308793;
	bh=ZMmKfPz9TLunxqA5NJ4jXBj+gImU1Wi0GufmYEkRx7I=;
	h=To:Subject:From:Date:From;
	b=s65hv7Qfu27EZtI5AemIqz3VJmJ8mVbesRTT6RzpNJJHBNpRAu1jl5Q/PqoT3mGBG
	 +narzIoxaLpckSnRiYIiXHc/wwBMzzKtoatQDaVAsXCJutzY2v6Njf8lB02546CVZO
	 WvboZ91I1L73hf0VcudhPQKt/9WphClgGaw2XJOGAIoFOYSrIsx2LoaEa/4YsIKk50
	 HRn5+EJbKmablzxgUI4alPzcQY5nHOWUGg2QAMIxr/yerbP6V6YlHfb0nqazZdi4SL
	 Gqxeq3HCqPHQSMTiK0AOAhmzjoX7t8mo4xOi/ij0yoctqZ4Pz4swYHhMpK7Fr/ZVWQ
	 988AMLTNJeEAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93493CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030879358.28159.8085761837878049751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e4b80508167952766267026ef56fa95495043c873b2484928d2dd6b2d843e0
Date: Sun, 12 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760308793
