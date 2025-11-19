Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EDC233721
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763532715; cv=none; b=WU6ouObh3hduraGtM0G9Ot4g5XLVEeMyqoXoKSFe8cPqs04XZQQtzOvNVqf++qmvDT3X0Ko9XBUZOjaxXMjxS3S2ben6Ykw9xpoEWQxzjlRddbwuLmbhago9pxgpXvyYXr5XaSTQYScLxlLJqukzP43vqdRFnvVds+1dIQcdBrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763532715; c=relaxed/simple;
	bh=w176UuGHkejXxSNn3hyocPE+9pm/SU3grw5Pcd0G1jw=;
	h=To:Subject:From:Message-Id:Date; b=MpHHdPu8KNmWSljB68NABnjP6nGeiPXz+a2I4GNiV7GpjRmGTlrgxQUIoc3ZTarKOT/pZvqh5woLXvYJ4qdu/lWk8L21UXHdSav0dVjiCU5QKSxFpgP240cSINi4AxdtovGuHpTOaDvetzNsMWzEwpQKkj64ROCF9iv030Ygv7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPIiYMji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPIiYMji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9AD2C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763532714;
	bh=w176UuGHkejXxSNn3hyocPE+9pm/SU3grw5Pcd0G1jw=;
	h=To:Subject:From:Date:From;
	b=aPIiYMjiiTnc+oa2HpRvgpY/vmatppzRlzgKdgXLxWh3SqpRftyfjYhrt4dYvw+T3
	 TFSl7rYSgAaUoJunndsP3hy9cOpyDt+/gpjc5KVztkTaYmZk/61fBaHB/tjx8uu/1V
	 L67n8of0f+anIUOlCcxIAoHVF3/EMfmir1k8pKCsc0AFhRn2trvcErmNDlZRTw6UeY
	 nsSZXBE3AMyVRg5JOVZhUEbMDpQOpVnuwdVcawZYAIcQk2lt05Gkf0FMZFXTFTROmX
	 Pg3srn2eik9rakp6guQHc6rH6h33NmlRAaeHo+X0GLcgNUo7yaqmHC79KI7E3mP/3i
	 iKihHpYcqjB3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9314CCF258E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353271359.19546.6398406156919510573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4fabf0e1873243720c741672aacc6cee12d0f4823d52a4b744788e948257f8
Date: Wed, 19 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763532713
