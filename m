Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AF935C185
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777529854; cv=none; b=c3YiHbxYcm7TZBl9gTdG0Z9u7Q8PWQtT4H3/qONYomIykyzv2rpySB4E1HvLWUlmlOoI/FqAd7q99HSjyb+IPwMOA5soaYPRDQrRU+2/YCaMK+4lj+63zQxnM96iVLEFZ1iF5/2hb5P7r2Qb0XqJOly7xGidLKPc2nK37oNnKq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777529854; c=relaxed/simple;
	bh=wtRb68rWG1zA5in8oNLfGdfwIAf2UVDJFwi/2ifoOCU=;
	h=To:Subject:From:Message-Id:Date; b=O0wyDy1kEVzDlFUNOwYt7KjgwDAKieZrLAP2uVXtu9o+28GpmtwI+7hYK0PpKGfnLboKbg2USQaRdxR5x20GqTC2S75J4Z7DdVCuIN8HirDemLbf/1joWIw7EWiOkbEawjeFWKDU0XvCHf090ArOfyKe9mmIg6tPk/qJ5B3smxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYeNRzqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYeNRzqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11B2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777529853;
	bh=wtRb68rWG1zA5in8oNLfGdfwIAf2UVDJFwi/2ifoOCU=;
	h=To:Subject:From:Date:From;
	b=hYeNRzqDqH8tGgQZ07nY8cGXmXMWxv0bdZMJEV4VaxFpaViOKvFknhdBUMMX2tzfX
	 epLoguu8sasFXNzBurS5uSWBJ9dy95wH8ZQkL4ha5gIVKR7LjkaO4nsMOw0hv7TUR2
	 y/XT2/g8GQIagr4wJoV1/6Xtze6Es0kDOtuumIjySwRDh6NPkHPniaN4C+STrz11ai
	 tRHJLjWAf+rSrd6Gk41jjmO/p1vEuiqyzgTgrojt76a93ZfcQGKM9fa/cbjRvJT43V
	 lk6dfB/niE0zsqhpc++67N7USTjaDvM3VwmdSRUXhBSaEFJXxIY3VMKTxhNYhG41pi
	 4GgoFl1fOuH8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9695FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752985368.2322.8853166056210076182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ebd9f5a7b053df922511bb05e8d7af4df0441d03501a0b8baed596583e0444
Date: Thu, 30 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777529853
