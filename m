Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DE62BE646
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754764194; cv=none; b=GdDhKWcvu44Iw1sSq/GDBEay0VUpppq91pu+sw1UGhVXfNHhl/hLDjn4LE/G+Ntlw+8FQtywYRMH490ssOZIKkLIwTRjF/1OPLPA/sgj6sbllklm37zvKFDyJ9/NlrJeyLOSI3W49DgnncVtg35sEcQWhaBO34XQbPVT995RjaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754764194; c=relaxed/simple;
	bh=KV6K5gwXSZMofrLVPD3Y/oGKIW2VBXtYNXUuxvhykwQ=;
	h=To:Subject:From:Message-Id:Date; b=qVuQTTEpZ1VRxU0ioZJxxNJcfGk2N1xnNY45iPnwB+R9nCP60j/28lePEbqEB34o3NG94WBFQUmQ4vRiECOH3Y5nSRWbYxd8llNuOsb6inlCq30d3Mb0EruQxhJY5QL37EjFNRICs7UUN1Nhykvayi2IAREsHfkynsPV7vwnmpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjjh6cLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjjh6cLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A403FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754764193;
	bh=KV6K5gwXSZMofrLVPD3Y/oGKIW2VBXtYNXUuxvhykwQ=;
	h=To:Subject:From:Date:From;
	b=mjjh6cLu8WZYe0esjKAT7DdAK1DTi7pOCWEVs0h1aDxdelgcxnxYcGMoAFGSXGWQs
	 3LTNOzkuW/eqNlbxqDt+DrRItLEs8QR0SabPruaIzFcExUMJ4kCsG6kxzmnl5n1WfW
	 nl/OVDrjfY419ao9Zj3JygRzwtwGyp4z06Fpo+J6DiQLZRWvgN/CvcGXwSpcL9B+9a
	 Xxt2QA1d5JV3HxNoqFIoZbRVdwVm2bUIKJun5fGuWd9D/6x20QGV17zpNBdD4Ko7Pl
	 dFEDhRrdRTBc6qtoFNHFzIWOWcnkWi0Y9GpS5sv1H1VZFUAd8QAnKdNUazo4ADFDsi
	 sbawiRjRu//9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD8C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476419358.541.6313294160583360876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e431f77a48f0e43be409f9c77b793b37bbafc201ae06cdd76b1004e9d5ca58
Date: Sat, 09 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754764193
