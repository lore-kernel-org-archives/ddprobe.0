Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5028388876
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778599834; cv=none; b=lY5lRdcUdxivBORWqxvPShfZ34qkN9INsn8vKQZzaMO1/A9EqKDlCkXfDOQlztGeEqBUs1aIUu8MVaKLNJR+mecawDDzwyXSZPY/sL6BADAWognA0m6DbyOnQJ63ImtFo510/9AiP/rytHk+xOHMuWlTjM8QStVI/nPjrZrChc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778599834; c=relaxed/simple;
	bh=Y28WHDXO70XjMdeK8bNDGo2dtw/8ZfPw3r+VF6eP9/o=;
	h=To:Subject:From:Message-Id:Date; b=FwULvGKtqMpEXqdl3S4Kwz8dYbohlraNOJXn3MRLFQiea2S4u4D6l5prRt1AoVXSYtdnvwrWGVlo0ACUCXj+tA5lF9d11SDTRqB2eCtlcf6+QzXwO14UbM5wOnr3J9cWxFrGfebailrjN8JV0BuHvtRQXBf/zUXs+UB9OOKZ5tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9kX7jPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9kX7jPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA253C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778599833;
	bh=Y28WHDXO70XjMdeK8bNDGo2dtw/8ZfPw3r+VF6eP9/o=;
	h=To:Subject:From:Date:From;
	b=L9kX7jPkhfUvHfJLfyJTCZxpjKqc0PICVxY0mEwcsR+cwgnSdYFueTSTu/YCvhJV1
	 kz+IlSzgnKVDUfApxxYToQ3iLBb+PJSZQvr6AdWhDf3KhA3hv8TF9khh5R9Pm7Dxmk
	 X3cilW5Th/G0iUBF+Sbju2pA50qtTZ2eSyGGfFjmPZ4+P/RuAGb+sDWndN19NSUWM1
	 +RTGr9wTCXxiRBcbjUk9UWrn5eF8o/m1qNJbTGEpunCOpy7tlD/SLTTtiXtEzh+P64
	 +Cfq1B7WyRMbrYPexuq0xDXgSEl6iAf7z2TF6kvcVsITwno7mlXzfPCJ4LO0jw7OQQ
	 UmDir0kBeFmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC21BCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859983369.31268.17157965755819271114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b314e7f4806e0c5a76243250682d68b5c698f3d5c33ef4a2838a7a5a17abfb
Date: Tue, 12 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778599833
