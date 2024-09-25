Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCDB14B946
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727237154; cv=none; b=eirK/ezdsjnSNKinC8zvlx+PX3PSrpXx6U89p79YDatU0yLmXSXZEyifaY0Acg+QR5MFRB3nBNvtbQjfJ9c9dcqpNv5H1HSW0lGYDdMTnR0u5qQhVmetKWWGBp+1fQFIrX1S00iWP8fuPGbJFiECheCl87OIXyab8Pj/BYd1I/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727237154; c=relaxed/simple;
	bh=H9sVBWhrB1dREBnJIRvEY9bdX+OVqPGv6jLf8uPdm+E=;
	h=To:Subject:From:Message-Id:Date; b=F1pVKxmpaYPU5Ra+TKLyn5e5nEnZt4UqXW6th3eUt7389Gy5+CazlkYuex4CtTtJA+iTtNH897s7VehyTSCgDVXOi2pQAXNvtX+x0m36a7nRPqFHKKrMJK7lFu1k1yPGuxgqWkrlKRs6MBoBXqOG4vO7jl4K0xWMGiZpHIPNk4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Na/pKgZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Na/pKgZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E015C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727237153;
	bh=H9sVBWhrB1dREBnJIRvEY9bdX+OVqPGv6jLf8uPdm+E=;
	h=To:Subject:From:Date:From;
	b=Na/pKgZpxxo+hTrd8hxfdUGX8shX7yd0uNp0CeEMDdDunKaJKQsGWRyyHKpZuj6fl
	 ar2bfPoy5hEm+HJ83Fir495LVYmc2uOqr60SjE024APxx+Rx0jcFZV8UFNCJAT+WoZ
	 KeQ2Msl9H4MlM6JqsxggdoVpXogQubp021pIQfDFtg11tbwAbyJnHfl8zyYe8ZzIjR
	 AXp61COjzVnV1TqnjRU5adJQQmdmkiTMRXvZLVQ7jY2VFqC45k/4ELmSsoM0eqVTOR
	 bkeOIVTbS0opFWyIfuJC1CS9pDiIQLkHZ3aGQu+jO97/LfiMOunErmjLyzaRThvrL8
	 NoZFlSnZ6eB3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C73CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172723715358.20248.18217965059095847352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318717246ce9e229f8227992b534aca68604bd1b5bbbccd809af421f1a08428d
Date: Wed, 25 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727237153
