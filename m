Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586A6340A7D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784845834; cv=none; b=QihJZgGpTn8AytbOpr8BJi1sCQwSDQI/liVqoxURMsdxj2YP+mMNnwcDV9cMhUusiM9hNSsL8f0XR1AFgl8DswtZ5mQm2Lxa2TZdQxORBkGW0mcCoXpK2OSlYU1sCw4CPsw1HjMHhMUQr8/BZor0O43vCUC8zCtRDBpz05+g4GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784845834; c=relaxed/simple;
	bh=S06jxIHJPsuw+Sxhiwh80jTC479g3cgURElBl5Ti640=;
	h=To:Subject:From:Message-Id:Date; b=o69auFtkL42XArhjHHssVF999VDQayCvgFaRUxXdTinwDH21UeQUxA+hQ57aiMKiplCyD0MugQmaAAgDfTL6DxRLeBIiJj3f1BOO58TncJxLtw1vj/CS9QE+yeekkStAlfvZKeJiUPuXH387hX7b3Z3OtkrMLwvszljkwBDYsdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWNbh5Dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWNbh5Dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2F5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784845833;
	bh=S06jxIHJPsuw+Sxhiwh80jTC479g3cgURElBl5Ti640=;
	h=To:Subject:From:Date:From;
	b=HWNbh5Dv6Jjlg1clH4uams56lI/C9yFXKhvfM9BAU3bQ2wO9+TOnadR0PqwQOm4zl
	 +V0l91cnu5PaRnBtcZeO0ih7q7yWqybQ9PGhlJXB/cgZTOt+eYK8zuCHc70WWH7gdF
	 m773jzoRa2Mzt0y0FrPqdGKTZCpO3++k73wC5tIEGHG49KaFxpJamei32/bgo1OH0Y
	 i56tzmTu2aJPr5mrR01PVWGzP1RtVcN0Epa4yTFVtfC4plhTt9eC+R2PKVxgrH/2Qo
	 mYrd3wRIiLzdfzn0JE334In/lZSexJ28Ie80xtF505q/s71OVAtkASExlAMHzdUQQz
	 selHICs34LBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F02C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484583368.12591.4959591579228052927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d568ede6e73b1e4d9a2ace428eb1929417960b9442320083530433c4c20cae9
Date: Thu, 23 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784845833
