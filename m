Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BFB17FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735916154; cv=none; b=oh/0Q6rd5YYaH12TCey8B/CALciyhYOZ6CAS/TW7RZZuWixEb1928wqUrhckiNTU8CIhRC2YLBANu9v8FCmXbfEvQwEWK78E4AezE2B8JnKdlX9+T4+4AwhHrmeIUz59xR0GQd+YCWiuzY1Ec9tlSZagMwb5kSb3qEm5hZZqf8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735916154; c=relaxed/simple;
	bh=udO2ArEgZWLP39MYvUtXuzw01/wfnQ9MCGY+YAr53Ks=;
	h=To:Subject:From:Message-Id:Date; b=hAKtbq43adkAOcIbUKvEdPA1nw2cVF7jG7YV0p2hOLIRgSN/TjCcdZJeN6InyXQGKuwQPDr9i9RW+odynzLDjh6rXSlZHBi2vod2v8Y4mzdzuXrqlPsf4Ulf0BsoGZyKmjhN2ksMGXnzwpNoUwj11lBda/X1SUwmDfoff8Jxq4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfQ8cv94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfQ8cv94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FABC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735916153;
	bh=udO2ArEgZWLP39MYvUtXuzw01/wfnQ9MCGY+YAr53Ks=;
	h=To:Subject:From:Date:From;
	b=UfQ8cv94dQg0mB0vgl5AfpDjOprCbl9jHkZq4zwBDua7SYhEBWpYqyYZsyzNULFrR
	 1s4VQlaMhz7Jd6kYIM+4FWg+ZaH2hfnHn97uDKNBXSEG0rx2yQS2JUX485rSVqluye
	 IKJLnwUCBiTkVXLq0AwYgQYYRxFdA7OQCUhQlf6CzfVXyFTIH+WG1+sWztROyhq/vG
	 18YVdYqJAmLBgm1iVCXQ4O/0RjyukSSn1qHOu1UqZb//fR9TcW4UcwPXrug7w7aQQa
	 3n0i+81sjeki7epZU4WmP7c+j4VFaDA11FUYjiJHsHBn+VBdrAH4rZwI7g2lVS8p8b
	 Eet2KahFvSq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94231E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591615359.28738.5509410468878367186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b20e62df9675ee7d0eacc9a13de6252eee8230b1e3ec1199b7706fde9115bd
Date: Fri, 03 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735916153
