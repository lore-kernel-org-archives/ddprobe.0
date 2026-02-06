Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E99360732
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770374034; cv=none; b=DEFlEUtMNR0TnndkDqjrCcxur1SIGk5DmONL58sEcTZvBbx2B1wgMphg9XEUzdJYNYmJNibucTFoZulsn15u18Iqw3qYxcEzgZaadNlFg5NSn82TNcZN+G1u9TYzroBUbGBkvKwIJVPwpJjkvupd2lU1Ue8fjM4GXpJW9rCkIBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770374034; c=relaxed/simple;
	bh=Q+vAmEsERjjsjdzREQtTl3rVrC43dB//T+zI4CPAmF4=;
	h=To:Subject:From:Message-Id:Date; b=Q3IKq8PW2CBr7ZUKLxfvcgnFSjbBcsLtgFrZi5meGPcqxvbx+H1dlBPjNXkLgx5zD9UyzDm+LVPDsWRKTgOZgxdGHzQD8X4yuAt06Z/EHnuYo9vWCvo55RKXiksjm8vDg59lW9GyYGY5CBld+KGwIk9wbwsEhBBWC3kmNKGklSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOpRRo0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOpRRo0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECE5C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770374033;
	bh=Q+vAmEsERjjsjdzREQtTl3rVrC43dB//T+zI4CPAmF4=;
	h=To:Subject:From:Date:From;
	b=rOpRRo0nw5RbdxwpEGe5GTM27NAlE1WpLdBYlAzbYXjzLIf4Rnjq0jEp2+G6/E5oW
	 g0AOSl9OOUF/yrQEBgq+XrwbGTpVYBHPQn0lC8Q9BoOVLKWYNwAD5BvIik8iUbfFen
	 z1zwaVeGL664IoNicr3Iv4Jr96MQZFbkv/qngrUAYoHS/2+uDsHZF4Q9kJ/3ql3/AW
	 K2JX/CnAPU7F9AonpJJU9ykKKZOt//h4v/KDJX0KJ/KbICRe3N7eQxlZhODdUKu1Nm
	 3XFC1Qf9ZbIBgBayr0ttDbwfmLJ+9EwKYNKJfCVwAuSxG8vhg3Bf6D1fSJTMtqh9yf
	 h+/FJZS/Ch4Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB8EEE2086
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037403362.6403.4846597044842924738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d648a7df7697fb6378fb6f35e9dd5cb7a55d14e13c54258b19d2745592db7a2e
Date: Fri, 06 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770374033
