Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1916443E49B
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772213694; cv=none; b=AGS5DHstEuwpFXyM7a9zRb3ntjNmSIYOPN3cTZrXAfKMPZQnzYbdCfiZ4UObrXZT0VL/HyGMgn/j7Mfw46xHToK1Sk8PLWKFSJfUzV3I6CviZmRkj8mzJ4A9wRHttKDqT7thSsRalQiSkWjbNsheMxDn7O57GAFpF7A70aQJ/Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772213694; c=relaxed/simple;
	bh=3y1cK8sZbsC8vVCWUSgGQRa5yV8VM+SG3wdOjr9+81o=;
	h=To:Subject:From:Message-Id:Date; b=NT11HzL9DhPfnj5V8r5ohIf24f4KmpfyKVueOo10F/ZC1IXfywC/P3K9BAaKQgX1qbAGadDc8LY88ZJqpp4gvfkP353Ut2X1+RcnnWyRl0yBOg3ranN53eHqikguyL5YbtFp306lHd/8cvPVhfMxGiZQn66n7nDRlUNB3EdkpTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGbP0rH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGbP0rH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE87FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772213693;
	bh=3y1cK8sZbsC8vVCWUSgGQRa5yV8VM+SG3wdOjr9+81o=;
	h=To:Subject:From:Date:From;
	b=IGbP0rH2C5Bh9Ac9AtJV8y0cgsJxG6gFOxFYdRw1MDPb5CHc/bYp/NrqwVbahSv5X
	 v7JHfyj5Lm6QuIXAj1LdHWeZmpPYXA/yf5K/FUOx9XPOL4/w+3uopk9x7ChOhX8XGl
	 GTHB8huTbqx3Yoq3WvsiuoQn6B/SG2KI/7+xF1YvxsJburBz0iTBZAB8c84SHBCbFv
	 Aig3D8oKwkZWEajd3cenMvjvHGzccHDEOt6c4Jc8rdrRa8tf3rzFxcn+5O7pRUkGx5
	 PqSIg2BWZwZKSaw++XSy7ZtKLfi6hSiazVeWDelapSgjBUjtjTFJmmb6Y9/sahsa4M
	 47Jnc3bTbRoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A059FEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221369362.8879.12554023608315942542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedc832ada3559a9b2009b57656ebddca902e357aadcdb69c72ed3eb7fdf1760
Date: Fri, 27 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772213693
