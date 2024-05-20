Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573ECA2D
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716210743; cv=none; b=OWf0QR74S/XXrmC2hHPug1U/k5fzlWn1TbKHznl3j8WODzfkhcMqrEAqYC/ciCEI/pilOiKr3hJXnbCg1jxjAE2ff3S31YTZuYrs8fnHZA9SvrPQslVdQhPHVmbch8wVRCa925ldDohv1PerLgj5+rgztfrNxLiDOoApRMso0cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716210743; c=relaxed/simple;
	bh=Wd7Fcw9cj+4xs9CodTXD9k0PFrzvOyMOy6Hc9ngfkAU=;
	h=To:Subject:From:Message-Id:Date; b=P4kZSj4zq0J8HN0aZsXj/rpPxvQUwK80lexHYxASBr44QGOo3wwzGbZFJFf34LyeDOdRohAz1gR5ePMLap/5MpZ8ytHscOJLOWYRMKhQ0C1r532V4X24SVVpYyVWMxncgAPPyTvnZcDIFn+Q4V4bOHsYLzlR6q3OcMQCOxdFYO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pprq2fqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pprq2fqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1B9C32786
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716210743;
	bh=Wd7Fcw9cj+4xs9CodTXD9k0PFrzvOyMOy6Hc9ngfkAU=;
	h=To:Subject:From:Date:From;
	b=Pprq2fqyFRcEqD8I4N69zYeamS8r+O3BOYmbHFy6joooCaJnRGgxJm8NonKIH2Odr
	 AP44DYjn3VyKYyx48DDnM/mcJxoNWZCgfxxHTxCDoEjLT3cqhnMKKhtg4ia7uOCMKp
	 g0eUPgbIYk+dWnOq5XAqZYvckMD1atd/wyhka2zR4f3doZebfZ/DHUEMynAVk9xSEe
	 0jKx743Y3cxj+vpmd0YDWo8r29vu9xQDfxEuETRQOPddspSmqJG6j0w2XRdWzmt/w7
	 Fkw6EFWK+2olWNHrWc/6oibu93Z7onQ5CXIIvQf0UvE31TVP9dSWYGDhOd2rLAWjtk
	 5F7C6tcp+7VxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D640CC25B78
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621074286.15389.1055970979746053772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f15556dba7a42950c8f0ee3b510fdc2b4d17695279c9b666595f72d3fe69e74
Date: Mon, 20 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716210742
