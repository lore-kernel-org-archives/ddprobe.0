Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A8C37880E
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772265294; cv=none; b=juhoGmWlcpm1j2hJZSzcdwmdL+YBehUrT9ZBk2T3FzuFi0GC+Fl/krzj/Y33ZdKMf/iGteqzR5O686G4m5r5oThW8tIqs+snFg23ES8V+V+83gE1YFkveVs2fEgQ054DDT6zE5EagycW+beVcXbXovx82YBSW730Q36EMJEoCQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772265294; c=relaxed/simple;
	bh=35Uta+t0e4H+CuInK/3r6/DdG5SpmKrjoFxvF1+phT8=;
	h=To:Subject:From:Message-Id:Date; b=UiYCSqR+OHEsHG3IibUNcIMQpmKgxjUpOsBvirNwItNsx7oKtXPL7jsQl2Kj9rYlHSwy6hyfMsbo+e016KuKRPwKVobNmmYAQcoJ0dZMQyHb/nTP8Zutd3wv+KKJ95MVKf0lcYhBCQfuCYebcg1FvecSFikkyC80N/pLeu3bxqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgUMxynH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgUMxynH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F0AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772265293;
	bh=35Uta+t0e4H+CuInK/3r6/DdG5SpmKrjoFxvF1+phT8=;
	h=To:Subject:From:Date:From;
	b=rgUMxynHH6/k6EMg6nU6dTvXD5VCuN3ok/DJdxcH+KbwG/a7/NPtCK9462Z/QJ77A
	 rMyct1VcEy7JQ34qI6DAS4+e3/R14nICgCG7Yv8QDRKwHAIMrqEmtmjFl4ISnHFjKk
	 tkS2kQ82rDQwSJ3eW95PeaiDX8wLGVz7HELf2yD0ULtorai+CY0IobFKP1n6CXsla0
	 S33swa0b4Nslf2cbTIhdeBsQOd5sRbc/zv6hamTLYcVzoM3P02q1kBvQBp2NDwjUV8
	 IaiCXB/XC19FyjAYnm6u+hQ2BX2INuv5s/g/A9lJSDVgirVtxlTfiDxk+0UEwNpKYp
	 tZpu76TpINi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E93FEE4CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226529358.3130.6973186606388337386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b2a83e22035057fee4462e8695a0ad331fbbe5a7f8a4e0415810fc80d7017a
Date: Sat, 28 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772265293
