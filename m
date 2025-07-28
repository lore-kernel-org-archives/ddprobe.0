Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3242514A82
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753680595; cv=none; b=lPKhFFauYyvGFJVJhNpg+B0GWVJeenVtX1hCulSvd/kdpNRJl2RzdbZzI+w0dp72Zw4sDPRBmRDFa/U7MQcQUF9fZmqSthzt1gM8HLnOFnxZptem8VQvrB3onBd5abrlgM1tS67xhUI44PUojSlBpg5T2LRqoTpdWgXSp/xSulw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753680595; c=relaxed/simple;
	bh=H7QHvRzPtPT1UhMk7UC4EPwYM2s35Z3AtTWAIkGsc4Q=;
	h=To:Subject:From:Message-Id:Date; b=PZPVKwwz917JcbsHlI0nTiLQZxbozNNQAawZ3qKmJ+CUo+PzDQ1CLmLTr2E9c7VY+RuJjpRKSd0Vm2gqSodbrfRRhhjuD6gj3wZs9phGLKvDxk4LAivV7b6Q2bqJ7nKwFtKe/QU/Yup4ksE1uyjZm8BdmVT4f3F1XG90NqUdSrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoqX0XZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoqX0XZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D46EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753680593;
	bh=H7QHvRzPtPT1UhMk7UC4EPwYM2s35Z3AtTWAIkGsc4Q=;
	h=To:Subject:From:Date:From;
	b=EoqX0XZ54o+U2DZH8cgC/S3HjZK1ynvUE5fydjGpLxAwNYVx769cNsvHXOthlweDE
	 7Ham0l3QwSxR+LaY7ZIMrEQdA+mh9QlkwPJmxDXqUrskJmKGwr0L02PeRkZZ7jHIBr
	 ORQGWWt6fVOAXz6yu1qH9/Ct2ql0OPn1b65BcDLj+UHikolmVTlp6PdFbrwBeQQgiN
	 zAwIW9ZESko/nZmyByWrmn+Xlw6gI3w64zkj2rj5HMzELHF73Zq1e8XQ+kuz4u80Om
	 yIYA4d9uo1YAQkzq08kabqPoINcL6481A7DFi9dPdvDwCHnnMM8ycoLhQ5u/pjAtH/
	 SguIKIEGpI8mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F579C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368059357.17137.15801062680292224300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddef535904e9bf8dfbc615eacccf6ece5df5b4a696d9b1b081648de63e9b51e
Date: Mon, 28 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753680593
