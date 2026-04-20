Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187ED3876BF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776718654; cv=none; b=ca14psweAAB7e4JDnOixfHOdpioPcYYjRA3MS4i1H1c/ZyxHX+skep18zcpcQ2wzcNh8TaTXOVHaRWsc/7mKw1ai3dxoculek4Jmtwrh54s0h1e0kgrrBYJ4OYVF3V7hXLiu7eLz1ulSlASAfkaKIzpjQYt1BrJ4/XiXjqk8TY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776718654; c=relaxed/simple;
	bh=AlJymUYacLEHYy4DR9HwFED9VVJVAj/Kby85/eT6T8M=;
	h=To:Subject:From:Message-Id:Date; b=u6/xewaI/4yW3k5kJU7PDNkRCzUmV6VZQ/bTqdGOLIg8tdOHCEh2+mCzuiwG5t2fqEWIz3zQ/GanDpFcGI3K7mzYNbO4YbPtD137Vl+BaO/5+iGAlyoR2AnvkWeietAYnWxKW/pPZGQP65OsvBUBSSscXBBqPxxSrMR4YAznyu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTav3Npp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTav3Npp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA258C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776718653;
	bh=AlJymUYacLEHYy4DR9HwFED9VVJVAj/Kby85/eT6T8M=;
	h=To:Subject:From:Date:From;
	b=ZTav3NppJccKnWx/B9rCV2n7q9SUz5UW2AcZYduipjUYV5TSHP4fYLNz8eGVbgx8E
	 D98mEOJfcdxG8UswZkS55ihswbXUsqGDhTxQB5GCqGuqpDeSFrcwoESLb4v3JFPV9n
	 LkqNYw5DA2EuBCZmvfaMGW8wArhPD+ziG/yUebCUl10oBOsMkrLTq2sDlMj/YsFoNG
	 CVB2U9Npd0kzZ2BUu9etm90Y2jmLdLU1N9A5JVkCcOrOCSLf3DVx44uBCjCnbOYzNx
	 uvyAaYQFVA5nVBFUMrC4T/zlY5J58fYwiB9oXSX1/7Q61OrdplCE5DIHow20uXXrPD
	 UY5XCKj0Aj6BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE70F5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671865369.7591.7018504456777906967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0bbc7038507f10d50cb93b4dc29ddcb7b3ce522af1be5e1355aea5c97ae76a
Date: Mon, 20 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776718653
