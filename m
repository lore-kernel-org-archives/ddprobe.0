Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D1228851F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783528714; cv=none; b=N/94eSe56zKxRGluIl2+YXQsM/DXk6muFxOEef9b84Tq4HrxwT+Ox81Wp7d7pwCsWObepFdYtXZcJxplCrjIWwZP75pCqzN+ovih0HHm/mKVkhsBxRZbSHVyA1357KQtJHfxyuAroXRJEIuq+MwMpiq7a72kxYd5u6eZ7+lKnGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783528714; c=relaxed/simple;
	bh=qvQQp0eqo2CuEyYMhT8sfpOkbpNtJM8TJkEZ4kJerMc=;
	h=To:Subject:From:Message-Id:Date; b=bUJOElMjLy5jxw+4F5R10C3bXv7z5NQiXcsTxygxmc27ohZVgn1fuDHe/vVtST3KbGJgy6CjrYB4+CqNhG1+ZmzQaDUx2NhJUf7zSKQ001B3SsBGaa1EkWXxV+VjWlh1GMWydPbv1N+PnnrMVspf9di3uMhjKJdxoqn8itisrBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl68brKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl68brKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC9CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783528713;
	bh=qvQQp0eqo2CuEyYMhT8sfpOkbpNtJM8TJkEZ4kJerMc=;
	h=To:Subject:From:Date:From;
	b=Gl68brKUF1QZy/Va070IRuhqaIL01hCBrqfMxuZhlGPAS5HAcH6pMJX8PEJXJ4Er6
	 IcXyskJxkESXTNkTHJ3Ljva+27tLLC0Ih1shdB7aPBgK8SfnM9udqfsukq6Klm8s6w
	 Nyatvay0EqfIuI3QlJ2ovrkQcCVxPwWvrrYGL9vYbI4x4qbtB3CkDYk4oa3GXwiXs+
	 YPqv5HLtk21JROuktGI+DbgM/TR96yE/4Fl2mc0p1rX8cVfsyvp3/vTDDGB7AEHsdY
	 ORJeIsXJaHi7U12S90MPqrdpc+JODYzjcbrMUXMyTuRepBJJtebo6qRGWn3owkGD/r
	 QkTXEHQaXXBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D46C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352871368.27478.16635470124485432073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0cb455ce2ad4007f8bac9d90d4bdfcaa6512228be62687e36d37f03bae2629
Date: Wed, 08 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783528713
