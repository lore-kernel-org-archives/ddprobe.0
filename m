Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A93A621
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713580223; cv=none; b=bchM7xrk84YTzkzE3zR1uOi9zyVofUcqJtuMUqMDM/0DDsRNI9+8UJjvNKz8Jb9uXXuN101kQz8Yxo8rFaqWcYa+h+HLLixe6RJKmJTfTNY3l5csuq5q+gzqYFlaMVEafqjAFAr03n8ja6G/G51xOf+JDvgYWg7Ss2LH1bsI8X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713580223; c=relaxed/simple;
	bh=eWoVEmrPEtqiMXIhHJ+Pc6yCQUUQlne6T+NWOk8aQ6w=;
	h=To:Subject:From:Message-Id:Date; b=rKHe73cZijeeIYf+4gwbwg+uY2hA5pRBHcXwiDzftsdb+BGqOwT0wUJlyXn2Ufk2Dq0uV4sZ+GJ/Lv9F66ukAR1R4jaLLnb0LIm5G7itOMKEBkAZPW6ftdz52WJcelDQP4RuP0JvqsmYVpZ0MrDifvINmYKaSCCpaZKITaVfwIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ts+yWIdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ts+yWIdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7ACC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713580222;
	bh=eWoVEmrPEtqiMXIhHJ+Pc6yCQUUQlne6T+NWOk8aQ6w=;
	h=To:Subject:From:Date:From;
	b=Ts+yWIduXBZsWLHmAaoQtkeGxfRjoPP/vHXODU0zwy6JLcDuqei1iV4ZktHLLopmp
	 l8bz+bPvp7+ZsIOhKQ9/M2b7dx3REIUKtQuUhpHcpasYInk3+9nRmp1S417Sbwza7R
	 JxBP+LgPeDkRGCxML/xnPivHnr6aNVleMWAsHXMXMtvXJex0JZbsiitzuoNSUw6rWr
	 tfFPlAj/09caUfuZM/0t1R7rzUlnWDuDNoqwI1EOGmiPvA7JvWJzJkmTgM/GTtcyZU
	 B7JjTrcOItDf9GVMwM8kdol87WBMWC9sTVgYi5EIJNYgQy8V/9djn8zDCnQ3r9IVsq
	 MY+3/v7xkgvyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC69C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358022276.12849.943478745483898265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd234654effa4e324d9c827985cf4d1b423c626b52dd2dbe82e8297df9e6efc
Date: Sat, 20 Apr 2024 02:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713580222
