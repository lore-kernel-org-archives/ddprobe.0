Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3328B282E1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747383595; cv=none; b=MvaSsnGsG2upF7MICv53mNaKjrckEbNMKqGv5lRXw0yrZ7yO93m5nW0kntEMKEnyH8LmBUNv5Uehx8zQeehOxyT3gC6XIsYnxkMEWuDRAQ2OSVaT8V7+Y4APPB0qz9H5BduPZdpBlXgRom0IwxgC2aE7/cslMzRyJVG6OsKJWp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747383595; c=relaxed/simple;
	bh=COm+sCe1Af8h1lW/A5tH8KBW27POQWxr7cj7bTNP4pE=;
	h=To:Subject:From:Message-Id:Date; b=q1foUtzoty1htjKqQ64jnyySaeAf22lFPSab4KldiZus7W4USdUgE2xY8fDgDfliA6BIPY9tdp3ODwGx++8qQAQyl/X/Sv2SnmeYWQmW43ngfc7ARdHa5AHpgwfZaxf20dIujF8W7RqnWj8Z+c5voqtbh0fqv4ysxQkrzsKxdBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drJbRb1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drJbRb1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F64C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747383593;
	bh=COm+sCe1Af8h1lW/A5tH8KBW27POQWxr7cj7bTNP4pE=;
	h=To:Subject:From:Date:From;
	b=drJbRb1/OuqEL1085CYMj1tTKu26yFhLma66+ZmVPs0uVHmAqr5Cz+Pc6bxWmzzro
	 mlBPHDlh5AGibOvgdkmLvrteHYdU8lNLP2T5KAa+i9zkyHNMs3YvTYuP9sv9uZIZCs
	 YfiF4diyCpSftJUbGvqUL3Y74YbpyALuwLKhFMDYovtKFO24buYaEq2imhTAq0URLD
	 vZdu8z63+DJDeP3Gst0TmcktaKILrZ6buJWTKbNiKdV0BVKDajRcoNy9y6RuZHxvtA
	 5V3sV8zkXz8qw8OSTgY64+dqLu8zwXLLymvxRumLRtvDP8TXxKJyGlp41F2xQ7frD9
	 GDImPQ5NhPWHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9513FC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738359357.22043.2099760896827403623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1688c3fbfb0b75ed352f0c2f4dceba48d463bbae1ef959d4d1de0ba3f5529847
Date: Fri, 16 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747383593
