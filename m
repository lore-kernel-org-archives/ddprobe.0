Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFA95733E
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760949594; cv=none; b=D4LJ4TQbAVWba+tvh23cT7DMy2opNCZlab17KnRFpn2OZpLeNtgJPHsPDLJYjV+0vHhnmoMAxHchH76Qnak3vbnCPEeFt7b8v/8dpYW5eP4C7gKV+RuDoh5UURe+7ujkOo1TQyblUba2P+CaRC4sTeXPonCqM9bZFiWRZ+UyuHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760949594; c=relaxed/simple;
	bh=T1AmsBXjl8wkje+V0LRFl1JMq00yhi0r1xruHSDIUzY=;
	h=To:Subject:From:Message-Id:Date; b=SdZOdXCQH6wIh+Vb1lLKmGq0tacLw4RuzNcRdpAYvPuJ73NKeLF9StvfdDbHB5/vSRfzWLo2g4afS8teBwUCGgE5z6oWsD8JMoc4p5vzJZfH7OeXw36jbvfam1U/5No/djlkK+ISKQnHlumcmzVrcyfhL19Si6NR/g3VOVOqfvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFaEpH1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFaEpH1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA116C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760949593;
	bh=T1AmsBXjl8wkje+V0LRFl1JMq00yhi0r1xruHSDIUzY=;
	h=To:Subject:From:Date:From;
	b=DFaEpH1UaQ9XQcRoB6r4XEvMhYYSL3NA74ESMBlS1rG+kK+m/FpzORg/EWsFun/qo
	 ylT38aYWjQmkNcLMBEjV10Tdn98GiNrXv0ELWvOIRIS6wv7VF6EIMFDlgQe3D+Mw/k
	 AyuNqXDW4bUodM//v7ieiXr7tH22Tgj7tXEAI8laGIOCY5O/kZcU4rNuqs5vgrxZ2D
	 Obv2DcKCbxG9qhVdT4MQNm/cKs0+yjprIP5WEVCmBgiVu+NJVwrHLVntsxj36tE9gV
	 VZxvzLz/xvUeKymAkiVKCZdw7DRdETUCCNXeJQPBRUQlkVXluZrMGIGbOqPinXmTlf
	 ysZyKgWSZvGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91078CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094959358.13076.8269623715772124174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24ca1f05decee4861acc1a686983f6f20c76d2ae55e905ecaffe04779d5ff1e
Date: Mon, 20 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760949593
