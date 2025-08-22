Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047A22E5404
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755845994; cv=none; b=W0KzasoLoHBpzj/ma4Ab7lK1bGJf3fQyjrjBffqt1PyCl31tfrYsI1J+rlRUoeVCf9oTAQQ9xCOymlgNo1T9GzX3ndkzxlTDsRRRLgW9GA6GTELEyS9fVk3IVnnnO9pOoyb7qS8cFEjTZC7vkGNGZtvszeBhtJZkXiRb+kG0Bhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755845994; c=relaxed/simple;
	bh=4XwAFO9bq4N0X3QD+oz/h1xYCuue6nQIVdfq97D/qOQ=;
	h=To:Subject:From:Message-Id:Date; b=a6ZDvXyJLNzcIDIQnxEheHlIcJo8IijC7myTGTYgfFEnq5NgcNqQoE0IneMQMdXvneaA1IbIGyzNvY8UHc9JCVFw9qqebToJrcX8EeCT1eTm+VQazf3Tq42gUazqJ9R0Fzzs9ThTWgVY8itJos+5Z+XvllTsC4Dm5lvb0uyMc3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz5RXMdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz5RXMdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D23BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755845993;
	bh=4XwAFO9bq4N0X3QD+oz/h1xYCuue6nQIVdfq97D/qOQ=;
	h=To:Subject:From:Date:From;
	b=Nz5RXMdG25SV4u+yhKpjzrC+zg2uaeHlO2R9DFQnzaORIfW4XFfVaziNZb/nHS3QJ
	 S8TI0lg9Wi4nvQWXCzSYjtGc9KsuLpzPx3jWVOtlynYH6o5BnnAhTQDP/+63aXEkU6
	 jf0CuWk+EELIXusiKWNQmluNSvs52ekaLK816z9ulHvX263UdwFje1Y9m/y2q2SEnG
	 tI82/f2z2O11s1kzxqljwdoHEjEiel8831xU7Qo6MOEa0Fu6aWzyBOCSthT4Xk50W8
	 DIN0DeCdX+fHfrwCglcR92IqT4bhtQUVZXR+HJkZmmcTruLhOutz+XKi4KkSjAXIX/
	 dUii2kU0bPuQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8FCA0FE1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584599357.27096.16591610105690270823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9648c4210bac54f401c6e3185f2ac86a39cc77e40653250c4fd1cc69c454cc47
Date: Fri, 22 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755845993
