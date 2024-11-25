Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A3718E028
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732524954; cv=none; b=Pb5gymroU+OCMKDBc1fg9+MYQRTMXb2FRNoX4JprswMB6FCbz+3g/2UFclVrHBANi9za/FCElhWzFDia3QTO49ZWkahXXrhpCIFHd5pQP8yfc3nWpAoyzpGbb+hzhEbeRvzlUnW/sGc7mKXnNFJUyD7qPvkHVBfN7WN08FogJRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732524954; c=relaxed/simple;
	bh=F/jpyUvR1HLnu2qZExqvHin1D/k8vvXkA5XZjSbmgw8=;
	h=To:Subject:From:Message-Id:Date; b=Ta6n6R39RpMHeG98JxmNXMUnwzeK2er6r3bPScLle5q2JicNt+ywglgjj40ytrQKcvMMDggML3R5Y00aJVNBuM82SInRzy8rFBwAsC4eXp4XxcjwO7Tvliuexxy2qeRi9GohdLFV2a+GFA1T6As4uHtuE14HuIDuYXOmPSmSPNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfWJ5mWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfWJ5mWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1EBC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732524953;
	bh=F/jpyUvR1HLnu2qZExqvHin1D/k8vvXkA5XZjSbmgw8=;
	h=To:Subject:From:Date:From;
	b=hfWJ5mWIaP4W45QxgtIbL4SUSXTsIDuVZVjB06rof6wxhd+EoWUthzTMSIQar2QJl
	 zWaBuUCXI9suV26zbOGnxYj+DOQm3V+JXJUuZzGhbTmhGUiSv9OBNSoZ2MJdJ0L19k
	 HICslT9WrYuwap4Z99PSGUpdjohBRYuO1jqW9Cg9LbeJ0X35seFl80pJtM4fphyU1l
	 zjkKW84zKkC/OUMw9qTy5zVOSWoVchXpest94qjRDmwtzKFnkYZ1fyvZJ7nl/3c4yo
	 G2SDil6f7TG39QTfTI9Ho5kAkbN1saj9+cmfENnoGNHLyjruOrLuYnUNyoZNs4sc+s
	 aMUmr8455XHbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDBD3B7F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252495360.19034.9089009716372521709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338140d263971e356f0e7fe6a813c3252812978ef482f5bd28161c4a784559b4
Date: Mon, 25 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732524953
