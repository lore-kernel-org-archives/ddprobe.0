Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE6D2F43
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747453194; cv=none; b=t1UX9xSZmkKHtt/vUOlZiuknlcfh2H81vKeAZh4aISrMKCeREdhyBTJ/sWA1p6dKIndfa2hCPF0X40+QjwoamWYmFQqFNH6VlsRS2Z+GdfSmvEtZ2tTWs97ZOyuXOayIiF1jubZDBo3c5JAsCsZN4Uz+50JaQ1BbxJuP+JCf7iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747453194; c=relaxed/simple;
	bh=fTZLPVyHxde0HjwpJr/71flt1Wu4Qf7szJ7ySkYfOy0=;
	h=To:Subject:From:Message-Id:Date; b=AaF55eIEeUEsXx7AyGb0IZGel4WqsDEtYLcX9Qj1IPFJROZlMaCQ1SwQAk/loAxy0tNRu+1Pbwxshc3cDtXBtq8VTfwls7xYhomiXpPkAfdwgzamzuRYuaHZPE19oiFJSrPq9DOqM8RgdeENPjVRFRKkiFYmgZ2Ml0qfGKd639o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGaMuhsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGaMuhsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9273C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747453193;
	bh=fTZLPVyHxde0HjwpJr/71flt1Wu4Qf7szJ7ySkYfOy0=;
	h=To:Subject:From:Date:From;
	b=tGaMuhsBMhVWxX+e/hs3OM2irl6DmBwL4FFIQuDoW0TN8csVTsJBTkLgRcaFw6bux
	 R8S2AXj2KZXkHLx4W5nVBKMY/421bKwZ6oX7/+4EN8D2aDsu//H0L/M49IrRbckEUC
	 WLQjS+7vxZEQC0/CVTEMBv0nhHdFror9yuAZktMw3OUGvrNJ4DyEpnkaRdJCDBcsiu
	 53NrbNrynh2BxR6vRnGx5GNZYAib7tECF+FUKCJdgyRkzVhWt/Ed6eAEK/k8ybYngE
	 FGc60aMAZePbLH1i/O1NKQ7iRBUMJ1Rjstd6y3sqUW0AabpNcZkC6iQM/tyMPARXff
	 OhXsgOXquq4Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DADC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745319357.4144.431723399662327473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23489251cbadea1364b71e30d569a4efb149d760c56efdc3c49a77e9bc9cf20
Date: Sat, 17 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747453193
