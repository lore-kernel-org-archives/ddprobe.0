Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218E11F60A
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726826754; cv=none; b=n9zFVTD34954sav3BkjkyeIorwY4mOp3iyGozatSI7NNlsTKH2F7UW/naY88EilDZ95fPEENkIk9ftCytcvQXtNIAYCTE/INERcTC9n68TQBj9Trk6KmBdFvXsExBLP8kQRlOfQEHiATnhvSlZp+3dJ/g0XakqvyheKkw0LlV3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726826754; c=relaxed/simple;
	bh=P6Re9fEX5i6bcOw2+UQK0e2/dVrP1iQL/qPkqShTL+c=;
	h=To:Subject:From:Message-Id:Date; b=e+Kh4yiF6fOo6uf/wnky334xQ5RQ4CMA0OF+s6VZgeCQDZhwRNOiJPMiMWXEHCqfgtywA7eJwuUOKFyvcCa5p8Q05QKK3LsI3NyTjvHP6Ln9kBWvo5NvBHcsYeobdnALlkHsE7QSPHavGPuzlBZN3f7nWCuL9eHzdokQyxsWLT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEvEzJSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEvEzJSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA587C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726826753;
	bh=P6Re9fEX5i6bcOw2+UQK0e2/dVrP1iQL/qPkqShTL+c=;
	h=To:Subject:From:Date:From;
	b=uEvEzJSBLRbbPoDX1btRtAjwwKzHr31SLQk780BlcFKAzqSb5j0H1999q03CR6HYg
	 oTNhRS7piTQh4xvF3xYO2fjGV50tk2Za01GkZhgGRrLYCWobbvI5eFt1xovSYjyU/G
	 V4SyGqZuRQCoslLctlxh3oei9JSuBkxsmtapmGhHU7UTGP5SN8uOg4e42VyIm9TJwq
	 WBUW3WfHW9C8W1EJ1GZNlMUfi0NDlau+VI0OARvn4Y1Y/WY1JiEPPKPk8OpY0gSZZp
	 FPYJ1gn6DQ5jVKtN0b5s3Noz//nNEf8pA2StiksXk61Zlj/XVIulyolEOF7LGxpKS+
	 hwniFv1JpIo7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3C7CE8D45
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682675363.10667.15900672870376160590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbca4a8e8e9b4415ab61b80884d457fc776b3bf92e734f6f24c21e636cc4857
Date: Fri, 20 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726826753
