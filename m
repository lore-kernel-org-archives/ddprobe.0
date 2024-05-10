Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6C37F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715301743; cv=none; b=dxiEf2vIQ9CdKXmXA5u4VrWvkyppJSHH9c12OLdKZe9oANxFslra2PKGochWq0a/du69MezORaI+P5dBn07YmLTfTrpUkjmY2kUyR8aYw+cBl4ppcAyVYB7Vo/olxE7VBSXepEF7R3KP0GVthAOjrpmoCMsA7DuO9fe0aWStIR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715301743; c=relaxed/simple;
	bh=LSs7l5d28UuhV+XzGyKUw5rUUnyGti9wXQFjKaYlIec=;
	h=To:Subject:From:Message-Id:Date; b=ZnT4DIksTWukTBL9/RDonuAe2YlvvjwtQ3lf7764rYBUKxFVUuam7KjzhVhfP+ux8igI1id+7kBERmS9/DhxWeQ0jUMC60vTMxzhmMaNhFjCrGJDB4btLpFip2Inu+RYKkJ+g2gq2rlpGiGvGtR7/nJPKlpyoS/vNQmaZskIMtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa9NDtLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa9NDtLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3725C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715301742;
	bh=LSs7l5d28UuhV+XzGyKUw5rUUnyGti9wXQFjKaYlIec=;
	h=To:Subject:From:Date:From;
	b=aa9NDtLL4l9GxmCtQxtEIsAcplPudwtc7/0Ekq3vIQwR+XyjjiQ9wkv8vwFjf+3bh
	 qXHu+25ziN3I08or9t1h3sLzFQeNwHxQ6tVS7IW41lnDLHbRieEZXm0vAxbgvq7EZB
	 sWKzalvNWDqVK6gMUjiVMrXbHTjiXKqLf2XbHadNeC7ShQas3tBTSotgHUFmnfcib3
	 u69JQx37VwFYm17kcuyYUDdwZyZxGCgYqFkQzJROAObGyFrY85cRTHsHs62VJTPbvB
	 dBZQvfe9D5avjWCbBvSnzgPYddaVpAW2PKmmrimfUktP3CS06/VN8okwodAlqnRvK2
	 27u4OTcWxlVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8ACC25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530174279.5790.15232008980997176988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866628fb512eebd343d1b1003dd8a90f99b73196cc9873567b21b2c01ef69ca8
Date: Fri, 10 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715301742
