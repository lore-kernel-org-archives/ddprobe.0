Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409D2242D6C
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747826994; cv=none; b=qm8zGW09S2CF3QJ2qHlZxbRpEAZpeAEpfqIxXiWtv8bpdSkwsvwia5hvf1VbdVy6QnT/oPoNaJon5dOLoqUQl1TJJFYBCSnK+YgrF1/7E8DepO9NwVqILBaKsIWgukEdNn01d4IETfqjT1Heg2ZiuBz1MNqV1r/FAb+QDIVOb+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747826994; c=relaxed/simple;
	bh=hIBDDrjmaut/2npsKZS+xwz91m4HE8Td7xbsdcOh3F0=;
	h=To:Subject:From:Message-Id:Date; b=NcVb2SRB3ChXp/7aqSZp0f2YcQlIBLNEljW0VS+zF6SWZfnTJ0TwMmvn6sD/i9QQtkeLIejTwHzniOTJPvKFPea4jrheSDOxzVIGdO04yD2SQFc8pJmDA+42inlAGzzH4envV99eaVytZfS7ALJFRURXjH7B+n0IDZO7B0zDrRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPWRQcyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPWRQcyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747826993;
	bh=hIBDDrjmaut/2npsKZS+xwz91m4HE8Td7xbsdcOh3F0=;
	h=To:Subject:From:Date:From;
	b=OPWRQcyjsjTCbaa2oo1rkxZuQ0OODsziR+pmLY5feMAPS9uW4fIjUVIYTS353k5eh
	 Ow2f8qNT/VDrCrDeSBfEcIqOu3NqwcVMyY+BlPWUS5RMmNf2ZaYWDKdIPsfLlFM/YZ
	 7XhD1NapWcFVBD6DB1cYKNqxDRK/HEyj9A1DA9mmBrYrUlPVgWlpY0OZ2dU89CJczE
	 tHhEUSBZhNtmerSmWAYYix2xJXxqaXwnW3dvLq+EA6ZO6wRw+t2FqZ6UR2V25yg8S3
	 TDYV1/g1kNp4uSy0goZbEBA3YdA+CogUvIXUrG/1hCWqAXlQFucx0azPih1dWHfGm/
	 /7nBpQnryrt8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC89C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782699357.6308.12249038359329224659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9e29bdec85bf2b0e1029dedef149f02339b0084219cb721d1b47ed96ee8720
Date: Wed, 21 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747826993
