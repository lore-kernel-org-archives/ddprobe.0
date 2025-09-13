Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DB721A421
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757767194; cv=none; b=S4FVmXLhTrtDoDgM4GGRsTK53hc2j5BX8AtyzsF4QTDRgGS16PhzSkjpV2D04YbBX3p2akR+HNe0mkxX2te5rVcveQpNYOaAmvzJYYNnb+gBhLIi6LTmSbHKxRqyn9spvD1rY5lGWwcRjYWjDLT5Nc/PhR8emo3Ewc4YQ1we7Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757767194; c=relaxed/simple;
	bh=ZN2ubqaOHezZnx1F5ISWnwKcd0qwYNNaRo0gJ6ghY14=;
	h=To:Subject:From:Message-Id:Date; b=EX4cZfk4kayuUD6prqvMzV4rGAVk+nEfZzv1u8u+5h8T33SXhD2qLV7+MpmbCSVaRl9R7g/byJ2mylhbckBAor21u+k0VcUMwaTfsf4N9IAh8xD+PEpRtQMfk62l1JWbKfmeIca6u/SjLX9in4e7KaT06h5XMzZYD412mH0Af0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx6YOa8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx6YOa8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7337C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757767193;
	bh=ZN2ubqaOHezZnx1F5ISWnwKcd0qwYNNaRo0gJ6ghY14=;
	h=To:Subject:From:Date:From;
	b=dx6YOa8fdzjaihLJFMDHtnu3/o6nF73UyWYM0P6UPA0CfXm0ZLmwK2n/bBr2DseLE
	 ElSCoJ/D5yu62eK8dmsQyN6gqUlQ6g66iSs7fHkWxYfaa17fHS2npyQ5TMob5WN51v
	 EMgqVt8kccAv9/sjRmpbbEXMTCkYhsFwub6+AESxAK+CDCtg2/ChS33eSQlASL+7Tu
	 Kmae1PH2b77AKHNT2MQf0io7V9TRWFBrqphcT/7qiw/HCMKXekUzuefMISo3l4km10
	 AkIirBl+YBsP8i+4UREmuQVdvl9nrM7wKZFs4auvCX3s3I2q1KCAUnOXKbS2tRlC2H
	 AO/I7c7K4ST/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976BACAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776719358.29119.14265383264795684331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7647d5ecf6c22becc6a3eaecf0281373ef83b43716ec7a60122abdbb9dd34edb
Date: Sat, 13 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757767193
