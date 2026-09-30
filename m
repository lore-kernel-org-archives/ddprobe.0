Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D6223ABBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790755834; cv=none; b=V05MPKvsm7GsUjlmwUutNTzqD6A68VTs+EU6l1fXp2R2jotkYnH8n5gQV0yAv8g+cOohe1fskZcZd8d9ItbtrhNk5jf9akCbvoxolKGx6bI5ZiQUdPmULU55Ykk0RLPreYDF2YQ0XuTDevD3Z51xt3/WxY+a9nkOd/tJQa8Isss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790755834; c=relaxed/simple;
	bh=oBfonjoP6NWA7nZXNly6PsYLYY0Vnh3ldJNDRf8fJKw=;
	h=To:Subject:From:Message-Id:Date; b=YU+vfkT5MhzqP5pg97qy/d2NsegVWvPzlCsUeleqz8lB9JJaHXgONTkou+9uvDdVLG3MvJDWwSBS44KuSqYmvOtl6XL8FQ5oL6TQKHCFgZx5vg84rzDwyZnJ7BFPNwvDN0ljihWV+7d5gaq6PPZgzNSYuPR/lgN4qYe+U9vC2rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2GiSW8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2GiSW8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68B7C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790755833;
	bh=oBfonjoP6NWA7nZXNly6PsYLYY0Vnh3ldJNDRf8fJKw=;
	h=To:Subject:From:Date:From;
	b=P2GiSW8HjP4ryTqCZX6ZAiLz87wj5QRvTS6j6bKnp+juSqhOPObCa8hzZK4XZb4Oq
	 xW0Hr2moMzdyWfwodHugWDT6EHa6WMerwUzTU+i/9QKCJrm6zBFDCeNgRGAFQ9FTM9
	 6d508BiGKhSa1llm5djLluaEOjMvBXE3u0zbOIhcGP4ePzVxZgEodJi5wtpEoo8C6N
	 S0MyjUloZwk+9r0n53xKLZRuNcLA5+xxffFFBCy65Ywdkm6rZhY5yo/PDzZpLCExSy
	 D3O28oF6zD6oS9Z9soJkBfzeGPEJY+sf9QQbc/59Zxwbqz/3rqjjVTB+plR/4XNXzg
	 Mvq2yeXFfHPXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C46CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075583373.5570.9174653471314514066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef6acdd522972b1dd55f589416051e3d64ca0bf3956eb65c496cc9602197f4f
Date: Wed, 30 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790755833
