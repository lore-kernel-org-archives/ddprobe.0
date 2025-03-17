Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4668B1DEFEB
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742245794; cv=none; b=HcTuzBEUimRGKkgQ36zcWjL7Lv1ZgtBCiKQDdjs0+4qNMIB227jtkL+tbvZ/EOXAWtsGhwG0s4+FS8/isn244ewYMg1NI/dG7hYFN5nbuaPow2bBaVMdcEJMMc3SJfA0B4fa4TePX/FeMvc0uuo8ig7R+Ez1dmdGTO8+XkWCqXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742245794; c=relaxed/simple;
	bh=rhfPSPxFqb/DFcOV9wvPYiqq4aZKhvUwGkKjlrFWie4=;
	h=To:Subject:From:Message-Id:Date; b=sdBtFFJpC2uEvszUYYuZxpALkAfhP8gzItalssYy825a2ZSdLf9CngBgPDuLIp6agN/mK8wRBT95bm2776P0Keuk1M+SY0QWxLBWnB3MVq/RRCuB9Qaew5P7vyCyIy5LU3UgXhCM2SA7JHKNnIm9uGtPfPUOdRSIiEBvRBdT8jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcBrf6LC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcBrf6LC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC98BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742245793;
	bh=rhfPSPxFqb/DFcOV9wvPYiqq4aZKhvUwGkKjlrFWie4=;
	h=To:Subject:From:Date:From;
	b=YcBrf6LCO3j+cYGF8JJv7IJGcXHckUlTbKTag7/ujk+u7D2CE0p0fJY+W83bTNUtH
	 0hG1xdURhdBT+9NPLN8/H5xjWCXgoRcUP9a6d/tURZTLwMBz5Xuvz5YUverv7Jgt/7
	 WZ0peZYuzRpyymZnd4mR34gvaTOrNb0RvgS8Njn32k9nybYgL+lRLquOjTsPnLLWIT
	 yZof42KG0YnQ2MEfzVPcnQZuBLM1EmxWb/KrJbv8coVEqbOMXkJiREBemv87fDMX4Q
	 wmTMxbWpwaoLZTvbFrt/AkX0SnoZu+HPkfeD+EPqVFLLirkhBAoewzcUfCJD8mN69a
	 N/k41ws/88GxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9962EC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224579358.18952.17178026961399126900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bbaf609000c37461ea7f2462662861dd968b75cceb981f8890915210039451
Date: Mon, 17 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742245793
