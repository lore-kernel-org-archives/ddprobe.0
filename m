Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACD31B4238
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735886754; cv=none; b=Vqro7ZQmRLhCiAObPeGl7TtRL8if0j6TtOFZ4Z4mYEPol5Zqba6Ap5Cq/0f1/dBcYP3+W0TXXWZY1sQ4GSj6SGtWIoKg25m613aGwqfq1WlUu0hYsgYGOScLbi16UrenT89UhP4qOs4NKXc1WurKxoRHvbdtM0mGwP+WhvufaiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735886754; c=relaxed/simple;
	bh=bPoRVFAGuiM82gI/yzFyoJRpK1J49NUT5r2oC1Y6oUc=;
	h=To:Subject:From:Message-Id:Date; b=kpnpGv/thFculk4Kh3vJkHjnNT3f/a8Yk020d/WKh9KzR9wEjOvX+XugHZ6Eyu9FlOOm32whLG+6JADUuQsr5RGrfW1Dh8u4h77VtjC3LYaMb2xJCf9A0ecZGxLqStrMUghfGiHHi/BRTq93JokBnWsWu7IY9ibioYvhzeVTP/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gygrPVhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gygrPVhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F90C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735886753;
	bh=bPoRVFAGuiM82gI/yzFyoJRpK1J49NUT5r2oC1Y6oUc=;
	h=To:Subject:From:Date:From;
	b=gygrPVhSEPFQQuHecisJu9K6IgjVtpJGz6Tal94wShi44dMcEftj+Y3imZ0GgGJke
	 ZjPVy6kg2kV3AcjX5KIohpIo4JJbOtim1WyUHGEhrrJzZahF/QdOKQr13RW4/Q8Hd2
	 HFSJQN3gaoNdQnHiFrXh41VPlW0odSQMErrEbo+F0fXlEgNT+Gi/+wjK9qytdT4zER
	 4GOV2Yf/Qy+UCxckmv8xh+wSCa57JeUHtHTQR9We3lLVu5d1e6lNxfGWMs//SbLaJp
	 sIXcFjpgcogaquAuI0wKYGVkI2ILXnvksFAVGA+rPEeNdZP4GwjMtHcmFubNkKAo2k
	 oqHBZx77mvBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95977E7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588675360.15005.8164900304741517828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90591d6d2107f456dac4955c399e64d2402543763c85a36f3026449cc9c50c7f
Date: Fri, 03 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735886753
