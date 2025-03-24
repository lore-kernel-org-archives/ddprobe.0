Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5421C84C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742848194; cv=none; b=SUgBGYo9dIeuJfKAwmEsS2jR4cHh2boIIm8B2D8m65hsflsAWlO5QYymgCpJitmTQ2gvWWwGfax9EwwOjtzcb+TuOeE+3OB/qIe3Si20Y7Kym2qstXtcDv3BrrDIbhmfMJDWQIBxAyFDD3lL+qqHjafqYbY1/+c3vNG9q2COTjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742848194; c=relaxed/simple;
	bh=8ggkVn0qEXGd1qkVw/I8/ny6mHjiUvGbJnekGHpLE+A=;
	h=To:Subject:From:Message-Id:Date; b=exzQcv0vZal9uyWEnSRo3WiR1ngXU8fIGWGkycK0ECfB7AWkcRAk1CjjNH9FUEoQ8FseSg1Jhn9YuAWyIJMKkWmqTZQ31fmiE9dQGYmyVMfBeugPmmhO3QkbwWghzfpEGjwsDwsS13uvOxU/3DwZq1+B5hOv/MqVxQIaI/L0kw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGKnoi75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGKnoi75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17D1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742848193;
	bh=8ggkVn0qEXGd1qkVw/I8/ny6mHjiUvGbJnekGHpLE+A=;
	h=To:Subject:From:Date:From;
	b=SGKnoi75J5AhqJ3S7haugoMyAxkg7pfzN2iocofc27vSQ1G9QVF94AiamdaFKhfNe
	 th6mks/OTwxPI2teYyP+Qu+NdiL9XG64nR5m9vjKeV61PH+RdzuNeBqP/pUVp89OCH
	 8aL9m7p0f5NApgk0VBNeykJvBP0qlph9i3HJ+8NtGuapne22hRmEf8yTGgHTvsPEoA
	 nY99ghQx8BVVmEg0MzKDa9dVqfWvKl+Og2uJmXhFhq2A/kJ45YQJZVjD0b0qaB7VjH
	 8ccwRGS17cJHq3df+u8EUPBEdLhIAJnpt2HWa2sTu3qj8eqe1sQIlMFisySISRgOO6
	 7vJiJuqQY2MhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B29C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284819365.1943.6980091004492794571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a40668d166c9f8b2ae1b1224818603059ea56e03e096620392edc40e45f0b79
Date: Mon, 24 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742848193
