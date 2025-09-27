Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA321494D9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758935394; cv=none; b=NKMdvfBmhDOLO3R1XUuk7xxN4CM8I/xxk3A/A8DDf6I13zEP/BPp/VZZtJLn3wfzMaZTQq+PsIgeLMi50z0SJhuNUyk45CNuToG93TNhDbJ1rthhZRNHXxDl+I2qDpFADr1FnOLhhxIRl0/szgqFL7KjyHX3B3WJL5R0Y8i6Ppc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758935394; c=relaxed/simple;
	bh=v/awDvGgazr4GhmQKg3heGUvJWN5r9cs/YAp9gTTbIU=;
	h=To:Subject:From:Message-Id:Date; b=XrjesRBXC64ALdbDzlSVV354naJtdMYF0c4CQ0XqA71txRio5FBTeG0ggnSqR8bHl2CbHOiAcCLiWQMzUflnrqs24c68mdVVFTagTl1O9m6/gQIUylRS9LVoQP7zFitJk1P09zumz/T9xmF8TQxUgX3Sra+a+G2P9KKYUWzE85Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSoARAMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSoARAMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC5C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758935393;
	bh=v/awDvGgazr4GhmQKg3heGUvJWN5r9cs/YAp9gTTbIU=;
	h=To:Subject:From:Date:From;
	b=dSoARAMCeA84sjuseqrtEHb9c2TzGOsdWlU/XhauOfrbcG3iOoiZWgb27vKK+WVN0
	 uP/uajv8l/brvif8nEILfISePccuYJQwmD5sHpde0jXo9/O6R3p7ABft+RonCXjYcX
	 u57AiwydntKshbSNsdn8rR/59+mgyeiaYBsIbLMTV8Km+drrEmv0wIupwxOHfn81Nn
	 8tustz6xg/n6SKcNZvQBSeNp33djiOc5JDjkKWniCrrjfrBsDzQnyMWzqqe3tXi9FE
	 pi1mFZOk46jmHLZ3tKWaaWaszShUZ0ASllWghMzogr/jJWzfslUTjkOBExqVabNydt
	 X3+lSbNdbp7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5CCAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893539358.26256.1102891279667816555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6d4ba5d14c10da7944efaeeb95f4716d19f7df6820fad6716f541c18eb36da
Date: Sat, 27 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758935393
