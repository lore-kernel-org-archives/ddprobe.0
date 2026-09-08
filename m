Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9911B38236E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788897634; cv=none; b=jzxBn97heBWQcZSoRJeP1K5fO9cDqyoCsiRoigSDD5naWbhwNkMY8dcf9Jr43zRo0s/j4kHyH7bM1kEpuB9X/pOc8PkWPxNnbAFnEcwxnhUVkLVrkY+XwDntb4EO3Jf6877szGfAVKiePCHmDwZIiSbvuKRgmmE8oKT9tYfWcFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788897634; c=relaxed/simple;
	bh=frZCFHYi/49rb04SrpF3G3Rz3mlIMctkx4ZMv2o9ssg=;
	h=To:Subject:From:Message-Id:Date; b=IoSJcygvymjtDlzWH7526z9TpzSAkIqnAq6qbY80um/GpXsfR3wQaMF/QA9zIEuz1SmV6K6JZsjmoGcQFypfytwbZ8SxgxQfXiJN5Ye4EPgpjbq7XnssvSQp3eorCpYjHXz+H1KM2dvxJKYMJ3wJfoiRveVeqiU+kqyYji6MlcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyGRqt+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyGRqt+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 33B38C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788897634;
	bh=frZCFHYi/49rb04SrpF3G3Rz3mlIMctkx4ZMv2o9ssg=;
	h=To:Subject:From:Date:From;
	b=kyGRqt+w3w0GTEWMyKlpbXdygpnjVmgGPceRuRyWSR7LzTwvquBSgHQi7glMdl57U
	 xiko1wuLWFHq51ZlXilD/0U51eiderLBSe/9hehJOQwx5QOkmuRJIJALEdrwRG0rIx
	 B7w39BwOG18LJKEZuylwrYokmKliiiGjvUujALuFiZnOEQ7Hrd50i5GV9H6O02Av1q
	 zrF8uEKwMhnGzhh7iqebtuDOQiPtKLmreaHL4hYSRKOHm/9QoDupCn35P9Dux9qZkY
	 epiFA1NanNMhD2Gpn0KdPTGDpr+CH1FXh5p6GFLT1UcBOKrUkijbQt2IrjrgScr8io
	 FczJK9VNQY++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2522C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889763388.30409.2202034395397795376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49e31ca2cabbc19586580866745d7a2725008f811a6d2112aea94bf9a15d03c
Date: Tue, 08 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788897633
