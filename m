Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E5821C160
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765629774; cv=none; b=cftHLUVw0welvqZZEwoaDfQrsajGAwCYIXxtmEghoi2fDhB01ZExtfiB6hKkv7HDf9cM/ngdWdifIXBshi55R2WZH/YaSXkc35grRITFe65eVqz3wn2nxX8givIY0r0ljAgPxfoJZPwE3fAWnH+BWGrcxdoC+3vFRscBXEHla/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765629774; c=relaxed/simple;
	bh=DrpWHqRU0JU16tUce+VPDcCXATLjkxgZI/1gu3BEmEo=;
	h=To:Subject:From:Message-Id:Date; b=fOIxDIjqHvgl/AcmCe+DqtQsEvpeNoxc381jmwjnkvRDJmpIWMczNbSJepWpwEk4KOEVM+jE2OFgVaiS96/PTCBhEAe/eMo8M7f4BOCzvnNFNSuY8RNZsBl7X5ZBOIyw5LEz7tJe73OIX/Ztxrr0j//NVMUry4ppCoYGjmeB0Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCyLCwZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCyLCwZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A46C113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765629773;
	bh=DrpWHqRU0JU16tUce+VPDcCXATLjkxgZI/1gu3BEmEo=;
	h=To:Subject:From:Date:From;
	b=QCyLCwZHN9UMizKe82tkvyuVsNQDJQ0p0Q7R2deX4o201GjGUEK/Z30T6GmcMpsuL
	 m5Hd6oNIW7SSwEjyjf1vfHmZPPt5VZMW2555HNNcal59prJlVH8So8hYuat6LsXnQu
	 Owk6JjS8kcxKOAtuitiTYTgKuQTOvKLPjQ1FdSRiMchcafd+eXtz3lKBZtmF8UizbL
	 BlWjhnrDhP1jj8VsWDTQk/EBljQzImNL2Q2wYbpj+e2oc10Y28KaJpRhpjCnKgwq2M
	 LQUg6o8JUm88fB5c2zHcePFUD8PhjwqB7a0kX4HZ1XQ8WIZAWKQeGUWf1/ofDoymj3
	 xbN1ztzZYRSQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44A1D5B15C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562977365.32082.3662888707622756373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8e84b5f806c37d3e640ad7c6ba30557a255adaf100a6288e7f8ba157256fc0
Date: Sat, 13 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765629773
