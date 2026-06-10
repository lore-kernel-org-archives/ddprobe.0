Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA9C248F57
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781121394; cv=none; b=mGIyq8RB1yz7qlspc4L/v161TOZ6FsKjED18MLUOhbGO00oJsl+05vhdoqiRsREcywDc7xrOKit68G8nfKGa1ROLE9lIQJyJOeQUodcXE4qF9kRdG30+GbmswaLdo5i4Fl2A597lGqEBEfClQcndRd5g5ZYL5IuCv9XcOcySzyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781121394; c=relaxed/simple;
	bh=EVySpQOYwCNakaAfS5rJdxt8rk8zEL3/UuWxSlj0+XM=;
	h=To:Subject:From:Message-Id:Date; b=WPE5P7e5beJsih2zPEVsL7LjVpDi/MqlxY4RaDQ80rA0XgStTSrM4gIz7GDdnq2pc4dcU2zeY9aT6l20YKMLNt1UwC/btmyKZ9R+X8JQJsW1eLnnEYKg659ovC++HkUJOtzLxVg0PmnRci0rL4P1TyFOlzusnxzRgGAG/HTCeoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8QG8fdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8QG8fdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29CDC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781121393;
	bh=EVySpQOYwCNakaAfS5rJdxt8rk8zEL3/UuWxSlj0+XM=;
	h=To:Subject:From:Date:From;
	b=Y8QG8fdL6IuHjfN2b9R8E6N/uaXHOnBqN7vqx/UY9zMiV1fMY/zM00H3HjbBDI6+4
	 0WDZnAs+vVgaHRR8L5utw3XR2Rqs0ffizVl92OyTugDyatvLncMWy4FBAyLODDr5SQ
	 L3/ymqm6xb2lL2eqG71zNtOeL8AW1z/el3O3LOo0IgsHot3tcgLE6QyZEfUuOslFV2
	 8DzVr+zdJqsuxcCMylnBhiQAXA5sduT3T1h/nQRlkGPgdUfpDvQ/OA0V3T0NmbeuBa
	 0KZTyU54dz0aFV3n4SfXFwUKqL340PhSzyQWInr/b09syUm2gb9MqfwIGMR/HUFzqg
	 I07ALydipgRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9287CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112139368.23789.15830516111627559965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05bea5bc18bc72464f639f755c3f7c2f42dfc960c329df8d2a2391537332d168
Date: Wed, 10 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781121393
