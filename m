Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3630E39B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719968123; cv=none; b=mCjLqMz9BYpXTU72pR5zPamS4ouTK3YINn5DybXT6CxrK0powkRih1hvmOvaxgcZt26SG4L+uPMyIPrw/KuzIQHuKPDTfRI54mbcwAr0b/N4+0JjfFxsoKuEwMciAEFT57v0tFC+ibdPAkq4eaHBD00UA38zhQr5vlJs0v2T/uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719968123; c=relaxed/simple;
	bh=/nkCcM/6io2CnHb2rSH9Gjrf4IB8XTbwJqll1cfISOc=;
	h=To:Subject:From:Message-Id:Date; b=AzecEhTAemOPrrq5oxS71dP4f/v+4H7x8aq7AChD/9omlLBz8mOgk+jZ46l4E8qtxfQd9BXlxEbPUCyqeAJZOwvL6fsddj4/YuVqEXAaqS5ZLKyUpvhV9Sdb8g+RSZqFVRB197he1L6b+FAaXgIhseCMPfhQPgbaAala7vba5a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZZYgxbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZZYgxbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BCAC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719968122;
	bh=/nkCcM/6io2CnHb2rSH9Gjrf4IB8XTbwJqll1cfISOc=;
	h=To:Subject:From:Date:From;
	b=NZZYgxbUeELcdzUS7c43lgcy0dk3/neNmWAAFQ+85qjZ/21Rc+hdyNDR1gt5QfqRS
	 gYJ9wEhyUOr72bJ6/ToqZmQAaggVuY7E6OIs2nqeED4RhFkhr4HDnvqdzqxbe3Uc6+
	 lfAbd1sJ1Y9AlRixiBLsFIhz10zWB1n5BId0nQ5PiqYSKVVzposVhegwyGeUxynSeN
	 JW2glq48294sa9h9RsTeUOXrcjHB7EM+zpHEYvxtuzsjOobJfzyhsi1D3Zob88AnIu
	 4kKmbG6biIUzD3TzVOYPpg3GYERcH/fTBwaMScggbAekaNfL2D+0wJfRuLyxNSftZG
	 OGv+6PPfpwy0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFF7C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996812277.27150.6419194864542993930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b69ec65a054a86e88a039247eb453f5ff4d0fae42a35d3fa21cecc7eeabe01e
Date: Wed, 03 Jul 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719968122
