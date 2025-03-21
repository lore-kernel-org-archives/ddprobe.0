Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516F6225797
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742560794; cv=none; b=iVKfSi4BxYKVaPnm5lfwWa3P8xNFpsivi9bzSaFS8qnxwOL86bdr5VIGkrM7uSQGQB9VKWJR0JejCXsvq1ATcp3+LPm+EfroaFqK68EUkHOVvRcAQ8/2LKkGus2vS6uZGO4BahckBOQF4fZlNZCpDHXKECMidr7uQLjtlKVhRws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742560794; c=relaxed/simple;
	bh=CNkXN0V9huk2fHV4QWkIXfS7pHDpOzMELz7Mnr81yHA=;
	h=To:Subject:From:Message-Id:Date; b=nkfvcZAEeNzFO7MZggJQ2LeGz+L+uzgc+mucC1Xasuh0oT8kZSpHRubzwEoHXZCuRYSBGBDTH1CDl7AfrxAx4EaHkRUZY5ZFXqXey2oP4En3tTm6h1HXRwXRNVAfIj+gqc0HxRhsmnXuRJJXmDRlb6Bj8Z2QQAzByDdpnT1uypg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqOc1kcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqOc1kcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D36C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742560793;
	bh=CNkXN0V9huk2fHV4QWkIXfS7pHDpOzMELz7Mnr81yHA=;
	h=To:Subject:From:Date:From;
	b=LqOc1kcQtC1S8H0JCTBUNvj/AQZktPCOwCUPJErA+Uek603UGttULNyp34UgzmlNv
	 lOP6hATQTzPiqvFXKElXONAKhRaPddy70ISLR3cDp3khSzS03K3Erv+aU+WnoP1ldL
	 5GTiw8QRhNpJUIy8PzQB5hZT4Xs+SSds77k0mqBlcT7ZMYBGZSjDpL486c0NKXi5rE
	 p4c0SlqW4PSEIH/CW13Wf9iyV0QvMqyULMo+FpNnBAjyc2rJVjTXZa1/2jr9srOzFv
	 sitQDDdWnNfW0udMwByOpx9TkgzuhNYSDsxRaVhK32CUXBLdMR/CvLA63VkOzD1TXV
	 0z54xhCKX/fbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F513C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256079364.12192.8638743372912108538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f7486777a5d9af76fad88fe4fa134b7ff25f0153736c91635d6f96c1fccf68
Date: Fri, 21 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742560793
