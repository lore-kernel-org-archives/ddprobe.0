Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0CA1917ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770710634; cv=none; b=Bj/vaJNl+D3WsiE72MO5AA/ES8PzeWEWyOzOxj3z3PAec0ui5M22GIzqmnEQe/wp9pY2GggVhkrgfMZK6GpxhRG0L0tDmeW1+zz2ResXiIRdh+j+A+J0deWePH+UV+XIRHTtVubwZXeVGD77GslQo8wNEKDPAmrrTgJyX6OHMWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770710634; c=relaxed/simple;
	bh=Sl20VevjdKjr/DKLQ5uC+ud+4gfp0YBN/MvPpwzUSCE=;
	h=To:Subject:From:Message-Id:Date; b=sTzwKv8qw57KxZ1R/7PqITUu3Ks5Sk49GG3LPMHt0xKLFhG6OYVnRauilKbNBi9VIFy874Jagc+Juh4MNjHtVYhAXEB8X6it2QhSed2vTHTPyCVzfFDOx6rG4cA2AeJ5qBxnP0BNmxWovByoxDIvRa+s3Ci3fykrbYcio9CK9B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yje36rhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yje36rhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BCC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770710633;
	bh=Sl20VevjdKjr/DKLQ5uC+ud+4gfp0YBN/MvPpwzUSCE=;
	h=To:Subject:From:Date:From;
	b=Yje36rhS9KIKx1g2MZRlEjKUZmuWDNZoG4K0eWEtXo+RK+CX6qmh2hYd78X+2Nqk+
	 4QalRZkzDsfmTAhS1QcGbV+L/7W2TyDlve7LY9Mr4xCdE3qfbU4Nn+weMtidl3lTc8
	 rE35f/yM/6HUMaGl8ULhJ70An+fvf0s/kolQBgLQ87xuMap6pjVD5OsibRb4BPCPk2
	 VHGexl6iJWISu5C4ImjRToLQL2Lir2MAEHFfz1WbC9ry7uQJQ5FEbI+E/+PZA0hdAu
	 LZsobDYa5sgm+9AjxKCTMs1JvlOg76YXXEykHVFWEkpHOrFUbGePMWaSgA/HwRb5N5
	 WUN8PQRpD1B+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4DEA3F13
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071063358.26016.12556165674850109641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de886b6e99a32155f3371aa94a0fc60472ecbd645ba0c1fe092249d177d08e9b
Date: Tue, 10 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770710633
