Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDF033CEA5
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784965834; cv=none; b=QP4zsFben8tHTeHQvySJf5QkNZOL6/BZTP4UKK8GPnm7vcO/U4KpcdREe2EvFPYK1ziShjhvsIT28BAAE1vB4WuvevMT5yPmEf3GmojlWLuEWBW7i9sRPztiSIsD07D+HHsRBbW/rxOwfRWQ4tirWI/lPI5JEdzKG0AnL2Y/Di4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784965834; c=relaxed/simple;
	bh=t170e9n90VpuUPo55rpKYc15N6Vx2knpmLZylD6qvps=;
	h=To:Subject:From:Message-Id:Date; b=CYZ0sKQ7KY1nht5uGSbCjEOkL30ZQsFXvPaYFJi+1ABgC8+bKCE/UZ2byke5h8GwIYAndRbBVdrDzqfBtihErNcBh/1gra2ATKHcSWuFCrZ0lxDQ+/UcRqMcWXl/chXnc3UGqbq3HMIO/YgxaXnKb8fnru/TcRt1e6/LtM6Lg4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9FjuSba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9FjuSba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AC2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784965833;
	bh=t170e9n90VpuUPo55rpKYc15N6Vx2knpmLZylD6qvps=;
	h=To:Subject:From:Date:From;
	b=M9FjuSbaUGjksDQuIVNbXeaRV3VBR50NV4dvZdz69xeqiygnV2w2eGSQvmtSINmcx
	 sCED9o1KxQX+YYcyVbARrjpjRQHb4XhXdeJWsKrL4uqM/CsiryGII4pY4oYWjhXnE5
	 HdCtTCKTjmZtDDkIB93vmVMdoYPcwZ6Pdy2u9WySuTrtNa52OUWzH7FGklWjWsOb2e
	 J+swZ2SXZ21i9cUVnoVDMQuRA+cJGmqIfHA/5UIsq4yxqwHoD+Ei8dr8WtOov2eha0
	 XnjQ8q4iGhf8s7qb+2kL8GZsMT5FeFaian2WEYi/UWNdfJiVCCe//IY6OaIXZc3g+h
	 l3tXH7Y74gwSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA07C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496583368.25118.6607183041362704021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cedadc2965a8c09878df55eea638ffb1dd6e334be84f15bd6b38f7486d4da3
Date: Sat, 25 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784965833
