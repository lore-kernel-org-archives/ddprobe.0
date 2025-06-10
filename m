Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01652D29BB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749560393; cv=none; b=SVM19Z5SjKC9yHu71CoHH60cYzun7cjfukTnXtFEwxqKunGFdGPLnWZRK1tmm/pmN9lh1d2K0nCdaf9ldNsv63eFxMAa6cRiknMUT3eEXESptqUIW3hEnmhcFK2Gsa+OrGKcmxOa0MZNTmyAhoGrKZDIDwxNWnEEYw+cmINO2Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749560393; c=relaxed/simple;
	bh=p6dwoHOxUE6Afv4p6WGk6jFxy1ebMv8nTm1eDJS1zQo=;
	h=To:Subject:From:Message-Id:Date; b=cWLVi9GzI/IpS57iIFA5doP3CEPqYs6/012/+kBo5TXbnzdoSX87k3jFmmcburdiYYtuxCq3fXYR9ZX5jnizfXMlcRdwxqabVWniK2SQIXjMNlLLI4d9hBSLaPJ3BReKgvbdGANKOJLDCSqDF6n/z1vqeSjc4jHtXp161LyxzkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLQst/87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLQst/87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F7C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749560393;
	bh=p6dwoHOxUE6Afv4p6WGk6jFxy1ebMv8nTm1eDJS1zQo=;
	h=To:Subject:From:Date:From;
	b=KLQst/87D5RYi5zuUKGbbWZKm/auY1/CM2K2kqY+ycnpuYOhOcCDSd67F4EOSlTlw
	 wLVN1wuw3dbYdykwrg1CwoIYnwNsD9yGf5XmtiPlDfyDWHse9+coKkYAZrnC/7KLLH
	 GK9W2QzYWQMyZZ/d2rPDr0bqOh+A3IwCRH4UF3DZZem6RAzztuhbByMVorWgJMg+N9
	 lTJan9w8HnBniiS47P7CKkTLqjxNkELtZpx5AuXnVVo3dxCTbpVMRh8D+fwkRz7c4Y
	 +b/SIyAU3xfUZb1dlm1Yw6oaqKgnJRIZaofpkg/TJ5fXBd6hK0xqeecvi4tTOgcc7z
	 LXh+rQCKd8KQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5FC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956039358.22951.587525560411425567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65280fd7a8e446d57580b68a3ad6be80285dd057828cad39c8c39bdf9e1eeee
Date: Tue, 10 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749560393
