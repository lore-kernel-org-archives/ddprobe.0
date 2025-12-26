Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D44D800
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766723634; cv=none; b=jFbNP+lNEttFyK8rd4R1IeFo7QN4NGI868N7atQI+eJJFe1gyrGube0Ran0eQ3O1hxIP+FTcheHHtrWX90M0GjDbkwhOCIikPAwZxXQ7YUYM5YzDi8zyBHV4mf9EvxIVgdJ9yXOFwmeMwxyQfMMQpQl5C9fKDFtCfsDR1vl8m9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766723634; c=relaxed/simple;
	bh=K4C+oC+12tXR8dXRD+GYtreY2M8BMk+tJKG6PzXFYZA=;
	h=To:Subject:From:Message-Id:Date; b=HQBSBmAc8aj9jikMZtNoxSJz/zUTZPWGH9DSQhQ+F+dAYsspAr3Iuz8xrQvHQn7ZOEyO1EmiGhIpjuO6kjZs8s0dYxrM0ppkdpNly9ayJHQP52t6R5bMJ9/RqNQyZt4obr/HIe+GhViP62zv6NC9nkOp36wi06C0iI9tGiGfF3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiaW2fTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiaW2fTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A363FC113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766723633;
	bh=K4C+oC+12tXR8dXRD+GYtreY2M8BMk+tJKG6PzXFYZA=;
	h=To:Subject:From:Date:From;
	b=CiaW2fTkh/CxOI+EomnJrKPqNoPJ1QMvPr6+bNPJxfGIewMO9SOdpHvtxrWxEsT06
	 QJlAtdxjfSXE2aPyhuYSHAahE+hylCyrrP8Gk4KkH8G+iCyp97ObtzexWO8c12VcRu
	 nvwj95npTIwaGNQ4NRC8tLKRNi43AfdQmycrvxn7BAr34+4cVsV5u0JIxM5YECYaUO
	 NSJe7FBJTUFqdp0DTiSFm+NgtSA3LsprWn47Bn9pwwMkZFWheve9BUrn3gvq7go99O
	 QF54nfYgrKZSAOl0J5WL2BvQ0dfBt1kmsXE+E+spfXM5lO+hT8U9zQp7jvPkWPOpOB
	 38YX5tvMtc7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A78E82CDE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672363359.12222.7886117361462626327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3eacb39279a97fbcaa3a938bb05e2cb6c074f8b99161515a167a0404c625c3b
Date: Fri, 26 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766723633
