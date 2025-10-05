Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168105464D
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759691394; cv=none; b=s/WfLlEa2egIKT8BM1HPLEi2GZJxrPEnEE9sRez+wWkb1TYGzj/K2lxIyvHwDRX5cB+oevyPsnDB7PMaTdD7+CPfBQeRu1eCNi5wFYg03W7Jq9Y0XujiQ+ynpaJtPMOg1br6ureof87RGRrxNsQaK+bmdVFm8nVbr1BjU2o/WDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759691394; c=relaxed/simple;
	bh=Mz1uKGgn/kW7I3xSmMCuFtJxmeRe3aLF9/FkCnbiBek=;
	h=To:Subject:From:Message-Id:Date; b=lG6GwutLjV2NIVR6AWAK+Ds1BWapHUX6CzBan9GkiioCHKbyIIpW11L/lAn4G+wK7F+aX//SVM9yX6aWJfhOIoXqEu9SezgCaNi95KA/4QhDnnEIxax0qVTHSpHKQ3HJeeiQxPGWoCnE2IG6xpjfwVOerXwzXsW+ZgHcxCyaG0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF/ZQ3Q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF/ZQ3Q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FD7C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759691393;
	bh=Mz1uKGgn/kW7I3xSmMCuFtJxmeRe3aLF9/FkCnbiBek=;
	h=To:Subject:From:Date:From;
	b=eF/ZQ3Q6E2OOA3E+cesltenzbOxSde1FnwpFJNF5+R3liJIwbO3DvxzRvF8fx7IMd
	 uX4ZwH1Hd6wt0tMNP+vEoZ0yivPa/hqYtQbbTHvcNoA4NCnATZ4xR3PV94K6/9ybGU
	 BvaOULaaSBF5bQK19VPdHfRyPyfZTN1MCuTULqfm2F3GCQiiBHB9TgrKEBeTDLzJzP
	 kPbwc4hcA3DKyhV5uL3efR+HY4tonlVnQVlumVUKVQLbito+zbkVETHvv9mpHYnpIU
	 oInGlre5/iu9I6/bWRu7nFCuNkc/y55Pws44GjQPjUGg2hsex+DEVgCqnxwEJ5/mA6
	 6Z54QuPqmf+wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146BCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969139357.18760.954189379203375665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d990bb51ac86560dbbc5d601ada28ace3e18165308050451ec8c1780881f929b
Date: Sun, 05 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759691393
