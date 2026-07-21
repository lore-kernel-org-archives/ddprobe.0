Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C963443A81
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784673514; cv=none; b=HvZ3biCYjBFMdtFZ/IiP32O4IBIdBnWlpUrkudLV4cVCHOXtHf9FO0iPi6o0/+WxNKFcfJDweZKsD1uAoy3MbtF/qEKN1XBKk8SfU5VwNcDDYw6Ow2QEssIEfKHuYpBuL50cFHFtrkPoRqLkr2DNODdjypBL5zhqARxfDyzeMtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784673514; c=relaxed/simple;
	bh=H2zV77Vu0ZfeSGQ9Hoz7/v6RzUyOV4TXJKzpjDmOIf8=;
	h=To:Subject:From:Message-Id:Date; b=Ys3PT379HE/ziV/Di4iLgta5P+trAXdxFO80viTiGp+1p5SOVDiBj2aL/3wFkoaPisP4tUgLzyth2S72q1vmjWwwy6XE2+YZZ7Oe2XdncBvBlE19EdXUUGZq73/ZbVeHusS3ExTN4edHoIYtu0XxU0N2BKTpcU8MpTt6GTpT9WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqRZH3BW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqRZH3BW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0F2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784673513;
	bh=H2zV77Vu0ZfeSGQ9Hoz7/v6RzUyOV4TXJKzpjDmOIf8=;
	h=To:Subject:From:Date:From;
	b=qqRZH3BWVII60HKA6Ir1rmBrHx+j/r8hl8fZn3JDLFKMVJhfyghWUGeUa0Ce6xLGR
	 oeECqnpP4w8WX0L797BYAM+F65BIM5KuqaAYs9HciSF4XTtGjKoQeaSihSHfTSz1Vn
	 g9Pt2cUdfSEqjc7Br956lJrD3pWrjbS0IS5MrQ+jz3KAjhdCYD1PZrPELHRXdHSy7N
	 kTwJv6NVCZYOygyM5BrfUh5v7taOMf3yHoh45Jo8fTG2p4NCwNgw8vH45P3ud78rq7
	 +mh24fnNqI3s9yInZxm7lxqooGjd2OOo4oTuIR9ISS/TS8AWD7JOGdl7fkHOt6ztde
	 zX4aFTZYnOHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4BFC4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467351369.17106.16763892426173526714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef8f14ec1d415e0c9a3a4f0f1f185c67e60f65200720db79a1fdd1e8b07e239
Date: Tue, 21 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784673513
