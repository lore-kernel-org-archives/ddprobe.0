Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F2B1E1C02
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767092634; cv=none; b=RP2OSbgm91sLR72PArbwvTL5KQR2zKW0505P6lAhPOGI0Gz0gsx9u3Ntgw0Pk7LnnWH9NltpKMJ2wNkADcyUWt9mZf0PPzC+D2DlEGRVxPnJokRruf7Amcr5pBJ32192/EMW284IiTADj3hYrY6+iro9W7oiy8bCC7jxPmRlDYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767092634; c=relaxed/simple;
	bh=hy7WFxs+rtTqKFAMjTLzxykkv6VPYjh2086VNbnVn+g=;
	h=To:Subject:From:Message-Id:Date; b=E9oqM8QlOk2wktKYyXOQdC1KFqIbg1G5Hsmt0gO7vT8WSHoryraVZiKOZTI9RuHJkL4CUzrM30kVP9naF4A5MuADYj5tYQTmaGL89/LeGcCDlnRLxlIzhR4IiAPVgw2yO2DLDVQzXe/3oI1SeMaKYtVlbT70GE5th5U8H7FbURg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMnwXCAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMnwXCAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C70C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767092633;
	bh=hy7WFxs+rtTqKFAMjTLzxykkv6VPYjh2086VNbnVn+g=;
	h=To:Subject:From:Date:From;
	b=UMnwXCAEGdrtlLBhEjdR4Cvek6VX8su2SunAounSVEY6dUewl9JMTf/umedQqh0gJ
	 UXULk/OdugkgJh1GGnKIJnTizwerUiM1CoYUxWZvjFIuuJArQCQP/K8UJFa9XARkD5
	 aH9LJTewuDohQKc+lJSZkyztjvbnnUEoZXey89ed8rzG17Y0/gdTUTZnsNqYUkAEp9
	 JHONbXDW2OxvLPL5DLMHxoTFiYM7JsD9iK5OnkPSm6ujmhtNsjUNdY9H3jQ9QlfJOs
	 STwY9PHJs6goQ/VF3lGaFvH7FDItKrhW6DyhjV8vroAkbPwA6xeEaOzYeyiEdVC0hr
	 HXgFITEZ05ALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F687E95A6C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709263357.32695.7421633257285060009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e573eead373c9b854cd30bedf42ba6c4b3202126e3abb11fc40c38ea2a0a57b2
Date: Tue, 30 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767092633
