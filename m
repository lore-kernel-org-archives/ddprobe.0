Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125431662E7
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726616154; cv=none; b=LRkAfUY+xUHarlAbn4lCBt1YXN/qVLfoTEvDeIHE/MgXWQIr6oAV8z2RJyFYkv6/Jd5UDdoAGPKcuby5XqThiLdbElsfYW1bkodR9j5UW+7EF6ezyYFRDFKX7naf5o5SpRkidg83E/5YdmFYzmYKWbn1JbzNf32QvYce6NZKrxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726616154; c=relaxed/simple;
	bh=suB/r62r98TL0PsgHjH5EEHcSo+tkGJSH8KmJdqvgGo=;
	h=To:Subject:From:Message-Id:Date; b=CzV5rptbv8k5GcP2uRvcxgap8nGU9jZhckW3iaVZm0PFMoPgtBywpv/0wbl9ozA7rKgS9ZmeocfITAgv4H/z8hSEy71AtmpgvEe9hT1JETCS2WUeqQjDEOokAbg42hFE/srs7/yFRbHg0N+H9h5hNJVfaNcmSmASBojiqFCmKwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AR1fqEO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AR1fqEO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB42EC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726616153;
	bh=suB/r62r98TL0PsgHjH5EEHcSo+tkGJSH8KmJdqvgGo=;
	h=To:Subject:From:Date:From;
	b=AR1fqEO/UVfE3JOQAzJJ4zPWxnJ6yIaUUKeyfk+Cx+MYXzkBxIsv38QR+pM0sXkJg
	 JPzFFyGYADAvOb8SMejJ8pNq3ZgThGHB/hFBD3EfFw2DeCFGmIuK8FZHPMX+Hssz17
	 GYgnu41+O9LTvCaLvD0wzviMSNf95Nqw+AE5vscnFKqBzyBLB4cRRmdaqJsXPY5kj9
	 VREy6QM5C24qa51+C/vCaZFJA0kbRALr2IveGYvD6jjsoOmWNHCUf5yJS+J+fU2l6l
	 2UFDWce64nzY4QG4WHEM8XUBoCc4BsUaUfRGIDG8stLKx0k/8lK5BdGfU+ul3EHSPZ
	 lnfIWg2k3u37g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F12CAC590
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661615358.23160.6658197385536686429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce55234baaa326e01712f926867aa13144d00d4026585911e5d1346a079fab29
Date: Tue, 17 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726616153
