Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782A57347E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719476663; cv=none; b=K7Kc0x37V5ASKnI3jOh2hyk+7+waFkqbpSrQ8slUXi5VRWQmSJa8Miz/Zy57k/n2q0e4TVJ2cn9z0eha3LC1NUNwZw6VbplULdmLksLCetrB8B8sFNZnEGcG+kSK9tIzmOPJ9/su3HJgl8arfE2GmJGNkp9osQgUg7KLhzQO20k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719476663; c=relaxed/simple;
	bh=p8q0Sx7w+yXwhtPuwOFLQ3KLb85JYqif9y4dK97CbXA=;
	h=To:Subject:From:Message-Id:Date; b=gkdTsxdE87MZTsDCFa893/b2470gH6nPCEZlUtrD8/atN/mntcncf4RxUvYXKDaw5z0i9/8ur9/rl2e+hrSQWCwrSAlt/YHlTKz04sV84LePO+EA1L4zGsUfsnL6x0bVM65qH8HPvg3OFtWxK8bVO2BqCq8CHuZOiv01Wz+7Gxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBXhyQIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBXhyQIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85AFC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719476662;
	bh=p8q0Sx7w+yXwhtPuwOFLQ3KLb85JYqif9y4dK97CbXA=;
	h=To:Subject:From:Date:From;
	b=PBXhyQIi6KoT2KC8E7ePj9SZDfwiwUvbBd5J6rQsQ+RQAB6iqcxITiIPRCtOZPpU+
	 jtSifqJg/EOnafNT6nA/AGISNnZkmxQYN5oHiHa4RMZolK17DTqP9RYsYjbZw0nj/C
	 albTSTDGaL5KpVh2hHOD0bJ9wGGY/SToLWw/k09DpbIzu+aaGaBO/gELaWfYIdWiU3
	 OOOqirCW7gkHwAsrw1+6+KRLE8gbdWXF/NCX3YtFvQ1PPqKFTZxp8TW3q9JagKp/4g
	 4VmuSC/rCOT3cvtHKJN8uzUxslQEFHcZ0XPaWu0hX8uPPIIFpzRvxI1qHyaerV8YfY
	 XKYheACtcnsPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D418DC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947666285.22039.7599754596567490223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e43e3ba238ee63f7d7891f5acd9b4805cddb8365526e2329e2c361cd1037d33
Date: Thu, 27 Jun 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719476662
