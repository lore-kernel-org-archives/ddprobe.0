Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B71B610B
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761264594; cv=none; b=rCKhCjxX9kRyK+OL7AOi0DWxjmw2ltPfbARqRjj05XQloc0RkVSnOU0JDFeh9UuttRp7O4jwh2OuKalILUUgZ0QPRTmPKYr4S/wGOSQmbXpvhy6C2FQanr3Hs+4RfO2VF0d2ZVlZHXs+AhLRRnq+FBJPhf0S5R/gFYaAhLWdCq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761264594; c=relaxed/simple;
	bh=/YBiWYHOKTsrrjqaXccA1bbioFAo/CpPzCo+5OmRAgc=;
	h=To:Subject:From:Message-Id:Date; b=fYTd5BaSREgIuXPbeg+UIibcRK61W3FTMfJAj3mwUsJjI2S/slAEhqqUImQoUSTLcEk2rXoE9D+nY+jd5xtGwpSl+foWMcXA59YyUI8G0RX0yEdq1NlKFR/0/rZVKJCs6mYahyNyIBHP1Ah5+czeSAr2WGeJRXwvfdoYIPqcO/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtJEZ73C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtJEZ73C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761264593;
	bh=/YBiWYHOKTsrrjqaXccA1bbioFAo/CpPzCo+5OmRAgc=;
	h=To:Subject:From:Date:From;
	b=BtJEZ73CTYEQIKHcRoA/Cc9RxBZbcITASSfWzy2NHskEzI7uCYYegWYg+I64MS/jV
	 wS4gvdFwMiQCeOKA74hfO7ExzvzQWztdnAxXUhQhB8RBW6DOJeMuky1QpP17QBQKZ+
	 aZBUUBCIklYP2/t7fmmw0hz0h0CejLgUUjQHHRYOy0n8S2G1kq/bVATBFVHlT0l4q/
	 I2u3inqSTwD2lHtnyg++ReeV86p4GUmANzBSNJOLNKaf93N4y7MnENHJqHqH12GUzU
	 JYfYKQDpwPCT7L2+Fm1tw+dWSSrIb9fnU3seTDsw8qg5RYnFqpjJBGT96KqkK8ccy0
	 yeMf3aauV8Cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91625CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126459357.25610.8396850739867734631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ba6b52a646687bd1a57bc871973b76c9b0216e5b9b9b32966881d2f6c4ce3d
Date: Fri, 24 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761264593
