Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FE7290F
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708272497; cv=none; b=kg9WP9c9T1bPlbYyiYx7DQkhDSe/8wjBMqZT1xufxOcghRS/JiDPhKgn8lPJh5n5s/ibK5LksOruMpPept3xmkEp2xs5PybV7tlFIYTFDPy1lW8xFoZZ5Jv5a23LzxcitwILH6jo0upWSi9eZKs2c2Ju+3kXJOkusEvvLIQE+L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708272497; c=relaxed/simple;
	bh=mJJdgdiH9IUmd9/CxDKNMV2tRdTAKQHvkpIV6QJ2LJ8=;
	h=To:Subject:From:Message-Id:Date; b=bm2TmVlOdGm/a3LAWsuZKeb9zICLpszt0pFrjVQcZW6E5kn6uQ+UqKWTcvJ2xGUJULTQXi9QfceTIlxLkxhtSFlZFitd6ACo+MBd5XsrSsCMDLYFJ7k4YNd87BfTNlO+5XEqq8yWy73uYkLrPZFfUmKEX8tahNk/VxqyavC4fDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RosB8LjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RosB8LjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F3DC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708272496;
	bh=mJJdgdiH9IUmd9/CxDKNMV2tRdTAKQHvkpIV6QJ2LJ8=;
	h=To:Subject:From:Date:From;
	b=RosB8LjTbgSgV2e+ZhIJHgvn/qXd2t7i0jmRVSUCNFy+lMKkDPJOBzvlaoXloBQTe
	 AXeUrP6UCWBAIof0u57xPvs9blsQMBVkCaWt8Ogh4fHRS5rNiDs+jcsFEjtukpT4mg
	 p5bKd68H2M1l8clPDvQU2IB7R6ghRwst6aiNsVBXt9jt0voY8aCIskScKZVBu87awE
	 tYtxyCR/ws2kH72BPM1byAr3fKbduhfws693GZ9EeXAjuRYgPseVlQKXsaDVKRJr1Z
	 XipSu39RiNFdqxLrktreto7RuHF4EnMBeKtRhpm+vFaSoue/+XNABDXo1dNpqUSt0Y
	 QfU2PKSeyXKuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648B6C48BC4
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170827249637.20001.205983003349313921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3fd940c504350ddd282bab04db976b2690b31aaa569a1633065e1c7b350dc9
Date: Sun, 18 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708272496
