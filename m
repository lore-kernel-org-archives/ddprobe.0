Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C4D34B1A1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774464894; cv=none; b=bOIkRejgZa2lp8hsPTLdGswth8XOkRdOHg+8LEE55lyW1i2W2MVH6MuYxKiXDks43MAO6Fip+C36tjgJsb86xrUcVV8masLpu8GvU1gxYELUxFDi750gO69JTVb8cjcoA/w5J5JqmTYW0OD7AdSkuccI+husoCOwwnfg4Ow5r+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774464894; c=relaxed/simple;
	bh=3fuo6SobjHUb36rFkkI3qod5+tWWApCvBu8XT7HXc4w=;
	h=To:Subject:From:Message-Id:Date; b=mgEtt/wkmgpS6c/MTtZYNwRaAKpZv2BQuMhhCiImYC5/2wPcAL8LHPCeNS8KeV1S9elQvlFDHel6xeYti1+ddY97E2LHvhVoArXLg+xYifVr/h0BLm/Oo9mrd0isZWWsRg4GL6pzBAprTnLNCQKFfsOOoWRG5K3a8Rf72TVae4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyeGnNyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyeGnNyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774464893;
	bh=3fuo6SobjHUb36rFkkI3qod5+tWWApCvBu8XT7HXc4w=;
	h=To:Subject:From:Date:From;
	b=LyeGnNyS0GGySaH5xTsstNNmJD2UMI7g5Rb7LD9mq/UxVVvXMP4vN1yAUcbA3xz+G
	 dKx5aCgrBxEeUjzl5WY8L+cnkxV28w3JenP45QtXlZL+vkRemj1f5W8y3fkxBnw/ev
	 cAcVXC/CjKMWj24mJ+gDzY1NMl5bf1A/Yu+fZWGRGTYw0MbWBCaI+AsOZJ4yQUmGY9
	 o//XvPBohKpn4MDX6oDORnjWTO1MwOSraDR8UyvaElODqyq2+ezs7krw8GDAIfSDj2
	 SNrzXj0tqPwTBAU2Lit8Qoj7SqlBMFU0v/+KCwSgq5yengutZRoDVEsAu05A2uLHpb
	 CQLSAkzaRpEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FC109C059
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446489360.32121.4362388473138391741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c077baa0ca28b89c7a712e5fe5a0899a9d62e5b925f1983d961a809e661ed665
Date: Wed, 25 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774464893
