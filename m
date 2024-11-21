Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5872309B0
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732149954; cv=none; b=KIA6BhKTNF2HiEW/dwVTHfEh7gK1Z6MYIC5MRIzhEYBJqZXY3iqc/5rIqfcyZPLNuuKTuU/u+VZqgbZ1v4bOZ54fIuu5vmMC7nEmO73nBVCrhN+mcfSWMA5cZ8vIzRiH8S+FOTJhNs3Ug4Myb0+rZdTYd4vcs8/lY9qwwHkuZEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732149954; c=relaxed/simple;
	bh=1xqWivvTyPAVTsERkQL/l0+M1iTR2Maat3HLTiIqA8c=;
	h=To:Subject:From:Message-Id:Date; b=deQVHmYmrOrzkfQy7p8rXT1mx1iK5AXNaiaUbwfNvgUKEMk9SYcaqbWV9Dki6ZXw5kCz01DGfRMAUjCWDtsc8P+DCt3YURdLkEEBUxDoz265ReFNUCoBQky0yGG7Q8P9HypDKunk7rlIb/fWRiZDjTcxWdEvGrCaMFewG/qdOW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW/IuI1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW/IuI1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB9BC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732149953;
	bh=1xqWivvTyPAVTsERkQL/l0+M1iTR2Maat3HLTiIqA8c=;
	h=To:Subject:From:Date:From;
	b=fW/IuI1xicKQhfmwQZsTnzsHc9ndbZr5+nCRXK4uV7x78joP9jtQmEwz40ypoQ/Mj
	 yfHqYFoUEoo493RLkwLtogA+1QNiyeLxmf9RL+9YWm6bYAxOn9HhSd8SeHeY6K6cyc
	 XcyaqE7n5KyHNi2RNuNxI43fRJmPqzt5v+vlGVWsmnY8x5gjWpHfpnhilQIEUyZt9p
	 bMiHckqJe/+4pnOKPBYYiAfKZ4MO1UwtYA24oNmDUJqPHXyQm0IhTFpOnk3I5vcyTR
	 riPWoM13KekM0fhcwfuy/3HjcJpWuQ1+Tw2AP8ruMzjVBeCS0zCuUqK5r3w0HITMTy
	 9FAJTIoys5vVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABDBD743F9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214995359.8626.16684709589957910311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0317fb8063c4c48540af06d19d219e2bea220629340b6ccfdf4991cdecf665
Date: Thu, 21 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732149953
