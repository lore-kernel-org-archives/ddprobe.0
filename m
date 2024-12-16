Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329351D554
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734386754; cv=none; b=kWg5aPGGyrgt9m42a7FXsRsh7O8fiY+W3gJUgnZ6ub7KXACkwGGbP718hEFLzHEMrHlHb81hZs4c/7kOLutFMMEGkoEqKjf3tGaNK9CPoolkxEHmE28jcjecZDFPMgP0VyjIE/zz3ed3z2NXHu6DJykIs8lm8xLDDG43/6NwZEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734386754; c=relaxed/simple;
	bh=2l25TeN6f7kmo2mP6ClX2NB4z9DHmH6BY8t49FpYqlI=;
	h=To:Subject:From:Message-Id:Date; b=gmp8QklHjLqIHI1abYW9JDUP2m03e+PXgVRI5dTwyoaUAAAShrTwQrRODalf7LqBx6XCYLHVLEzunKqHQG1Y1nMtEgFR7qwoN9Osf+RhnholoeRNzuracELKQ1oDnE04bJ+Ee/z4G0/aStTrr0D7j2XZwLaDEHpl/Nvqsfy8PZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU4v9hwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU4v9hwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA136C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734386753;
	bh=2l25TeN6f7kmo2mP6ClX2NB4z9DHmH6BY8t49FpYqlI=;
	h=To:Subject:From:Date:From;
	b=GU4v9hwNlHkkzXiSSO50HdKwWJKtzuMIxyS7b32JxZmUPNc0lW1Btqcox9sTMUEOK
	 QrOXr7MvFn1CrRECuEXnOZFr81kmuQoYe8NcfBb+vD0CN81Y+Et753HbF6OdVUFHRK
	 OUZc5CvxQFyNkRqYgrFMtJ6Vp4UPz8wXgKWV92wrW1ZtIWmdHRZQj9rWEDWppjmUhw
	 prtjX+iM85crPvzfBSqkxhnT+aHE/vdcItDIwe5gh8vuVSNhAsEKFMSXQvOtKpsuX4
	 9ZAYnUQ0c3IfeTjbNzM4+7lY3ucFej3/f9EUnm3ilpfd2ayStRsscZl1Lqn6e2nThE
	 36Pc0VxiUVGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BBE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438675357.7283.3469793460605162869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88330ced60d2a76e04739bf197cbc7ad7e826aaad0d55eef0301579ebda3e52f
Date: Mon, 16 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734386753
