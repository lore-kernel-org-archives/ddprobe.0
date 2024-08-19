Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C8F172BD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724083554; cv=none; b=b6Q8osvO22pUrPBKfgGfezIzWNXdfP95b+a8dvCzNOMnCQ7Q0DTI+8NFJTV1fSuvRTro2ySStX9iruJrUTwTHcPSF1bwA6DjJI+Lb7TWRSPBLrwpkdnnfrCG4PHV8j330uA85nT88GESqZiJOftu7QMd6ck4EXso28PhulgnYvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724083554; c=relaxed/simple;
	bh=NK+L00DMv1saof30BlW4fbVspFSBxqGrGdqkS3kIN6U=;
	h=To:Subject:From:Message-Id:Date; b=ULMltxEE5JgKam5Q3TvGSQ91HoHGEtIo5saLeAof6CshconKaUujvg94mHvn+VWrPNvrlDNArZJfqpoAnNGdPPgW4yIcuceKTb3OXETXD5JvQ+xIbtw8/lVBpPX7b3tyHIwJW4kXPShG+ZWJ9hJ5vdmZZ2hE8KIDhzz4WU2sqyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isdsy0YI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isdsy0YI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2FFC32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724083553;
	bh=NK+L00DMv1saof30BlW4fbVspFSBxqGrGdqkS3kIN6U=;
	h=To:Subject:From:Date:From;
	b=isdsy0YIYFtNtqonF7cIBq6mue0g1R5UcRLkvXO8EnBVogYy3+KmZibaXvaRrxi/L
	 XDd4XRBhGb+9nFEEkW+mMd3RNMT2JPg5YY1pXXkxnqbNu1NyAYSocwJ/7p04nPysHj
	 Tpr26SoEPpzZf/Lkl9XIehqVuS45dTmjl7nH/EEQP8Nw8BzAQ90wZyxsMyr/B44sTN
	 EOlhhuf8d65KZgIIp6mtnf6NmFTVuP9rL01wJ+GPwPnJrK+bbAXX1c5S0SZ2Zge1y6
	 7l+Fuo9tTMHaqHAVyazjgHaYRrwk35aiAlxMQEkd0+eAV6OH8+GKVzc2H356RsEkHA
	 Jtcda1spZD7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973E9C52D6F
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408355360.18164.547620453604824478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571247fb8f6e77230dd6db62d22eb22076fe3aaa8f4fed7c881eeef961e62fa1
Date: Mon, 19 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724083553
