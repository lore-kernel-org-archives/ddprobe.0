Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E3379F5
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742901594; cv=none; b=beR25/YqG+oC70WB0Q1dmS0HTh85BBRM434sGJjcpW+gB18MrQjZMT5MZe3DqEoQ4M97WM+JfN2NUV884WUmbcOuJrV9ScWXVJnzlvWiNhpXEBfRIaVwCzj49h/uLriGsq0keftxGKHSpj4FUmp9uvP1nFFV8xOlizx8V4QQsb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742901594; c=relaxed/simple;
	bh=VqBZ7RXlUm9+NCANnHzVN02mN/mkBkszR/jRuozKNfE=;
	h=To:Subject:From:Message-Id:Date; b=EJJRR37dEBnO4zNxVCCNzT3j57Bq/pXRfkwyVvULDzhuRXrs/EK45vJ9xiKV4jwduImWoqj4TYKJO4zd7fgx3fQELSYHRgzERJ4JCFzpdAHK1tPybSBNx6ccDhLmUSPE7onmGO/7n09JThQoLih9uwWLFB1WWGs8gbRNRnO8Voo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYtpc10G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYtpc10G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C6C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742901593;
	bh=VqBZ7RXlUm9+NCANnHzVN02mN/mkBkszR/jRuozKNfE=;
	h=To:Subject:From:Date:From;
	b=bYtpc10G+/sQos6WLoUEmO+ZNH2zZ1xykE5sbEfz+EY3pl8Wn/zUOdTDvJHwbhCEc
	 KLzaRjSDQb99GpMQPz7Onb23GiQGXRY+dmgEXDEZnBgKINh47/oEA3Zurc9saq79CY
	 L9IpmzxRozPXwBjHmdcOuPxlEIIQEHeJsOqBA7Ehq/PwqPlDuD4JpqCraHrV2Dv/s1
	 J3DYw+34iUFU7jAIYshCVQhl8ZazQMKU5i4q30mYXgJ34BgX1g5HXHmQfk9spMvhg4
	 +MCZxU/e5F88DuOD/zrRlmbVopB3c6qzkAI8/VsEdPFYsT3tC4dg02Hikh4yAA+Z/T
	 BPg9cpbGIT09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F0C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290159359.18984.15651905194257689154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c57341d4d49a688ae294211a1385f5c70bae639336bbe8da26f051d38c6e9c
Date: Tue, 25 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742901593
