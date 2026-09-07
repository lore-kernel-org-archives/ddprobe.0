Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED84525A8B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788811234; cv=none; b=WcDR2QIYhaErWqbiUkOmAcTBNITe+PBnUjsftaS9vr1F29JUMVbx6dF9e6YLOhXNWq6AlD+Z1BQlRanUqQk8HglTael2EkL10mrIy9TBqLbvFZ27txaYqfpAcTzij+y4+hhSbYhhe4fWzllJYsdkVRZGiKRA5tj+ql30qNw7mIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788811234; c=relaxed/simple;
	bh=ALiGZ+oE6rTfIFxebvDrTeC2Ptj3Kd5tPZRQKFbgJ4g=;
	h=To:Subject:From:Message-Id:Date; b=TIFxtq8jAH19RzErEtteKwyhZHaZXH0esnkj7GlyrbMKSjf4lTmmSlGu2jZWbNQwYaZcb34NIa/dtu1Lor5AHFDEpYUGyzGVgaGH7ePKOBI/W8hIti/kz/PSJ70Y9PouzXBPelt8YBzlj9o7xVqm+8UZb7JR5ZX4qb2kzVKpB08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qp2KIu6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qp2KIu6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EC9C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788811233;
	bh=ALiGZ+oE6rTfIFxebvDrTeC2Ptj3Kd5tPZRQKFbgJ4g=;
	h=To:Subject:From:Date:From;
	b=qp2KIu6Y21dEJUcrE1k+dBsJnWuEVNiAHs6R+Qj7TRa+ozfyaGpMjVkdUl7tR9b9h
	 Pwp2G99uahQxkvlkNKZgVvRE2yXV7sC3gRaBTr2AJshaFTvxSebeJnrXIwbPfOwmK4
	 eBJo/42l+0ky2VkrKPgqQ+Ig9a5wzxVd+HCVEUs7nWRxSob7cuZC2Zd1ckyu6XaZ0J
	 w9rhfty6LuEmnGMAQqiicEZXkEaqaH7oOQIM7Ry1XxgAXBCoXws2DBLFgEijFVenfJ
	 EjTxERfNLo2gGS43YJI01+WfL88E5iWwrwKerWNds9xNy8xEHug8E2IacaOOseZf+X
	 eJCNuDYOllWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF297C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881123370.7838.6804225421410493659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a3ff585b5ad5cc1d6aef84a7db13b60d546db63868c80b369d8a9a1c157211
Date: Mon, 07 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788811233
