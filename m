Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3373633D1
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723235154; cv=none; b=X8EHae+sJEtPZyDCgoP5WFd80Ak1qBp5RlKot2dEi14wht3hzwBJ9vaBFfc0wxGErA3pguwSgFFA5/Kquy2mc9Ztp6F6sS+f2scH8i0jWkSTLAmwjK9S/Lp5mWxyNA46g/aut7mhSwVHZowcv+6m0rbodPZmz4xZ9at3x6+rtCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723235154; c=relaxed/simple;
	bh=OhEMxPJTtIsXYDcNjEHvmlX4bVArgLsWScRXf1eRJsQ=;
	h=To:Subject:From:Message-Id:Date; b=J89G/2/HFyOQWTUD0hxZnZiFcLf3WJ/urMdsBMqsUtjYGP3SjVD1aJfZEf7LCv7MzUQIdNYhJAykdtKWR31Z+iln6XDgUWHJrQg5FYsmbtBsrwievEhUZNIYTIHcRXEOmJ9qFnY92d6I8E8CulPB3qMedLiTiNTzEqE9Un/FBbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGGZrI+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGGZrI+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B3C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723235153;
	bh=OhEMxPJTtIsXYDcNjEHvmlX4bVArgLsWScRXf1eRJsQ=;
	h=To:Subject:From:Date:From;
	b=SGGZrI+bDn+X6Wv0wvSVfmJ2rkp22PMyzzcs43dCEfwWsv5rbPC77PO6UnUIy7FB6
	 pCXIK55d+GnHnx+KkL4qtf5gJBHXy0u8JggJtbVjY6CUbXZm2hULRlN4xtN+x0wj3E
	 o9OUkuChoivNmKzW7CzPvGdPZlXpRuzutccIHSuvAcCYH8kLaYgCMopVp5Un39wc9D
	 OWtAneaadPoldWVPrJmDYUHHxwSuLgg/9Ztiztqza2dFbtJCB+CwKRSEeGnRP55Vvr
	 ispWvMnP3NsBc3kgMQnOfglGbugKTJoIy+f45zxbUGOan9FYQm+a8NkECZJ0ilTBpl
	 C9HGr93VgCGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EBAC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323515358.9636.6681240394586668426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22bf2be0ef4c679506d4526b6548ac896e28dd03374eb1a3b4ed5ffa4a8a58b6
Date: Fri, 09 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723235153
