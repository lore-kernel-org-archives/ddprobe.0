Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B9B218AAB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754493594; cv=none; b=Hdhq0dHA4o7E7hbf3+7ARWdJjugw/LzN8C3318y7xTZ1a9j14BiPFVVzhuY7lTvuIsWXYFmjEFIPSKdezKBlK2bypMLuB6r16M/hmaq1bUoQiXQY7d39emQ3UHSy8H5CHtwQEKaa0h6IU3W/lsNuZzWcSpWVPLhmkqmViKeoAec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754493594; c=relaxed/simple;
	bh=VhFIuIYvtMf2FotHgY48c8XOMv/oCh/M8JdFhQ0i/Lg=;
	h=To:Subject:From:Message-Id:Date; b=YIqjI3CwlQfSw+hy0Un6WWD0mrS2g8jzgjEf+QW9avvpwPxYp2/Zu5w0JkqZ3jUrPrHrMC7ID4LP2YuHJGoYeSbN5NxFAIiyppaW6/BEumuOvF8xZkXctHXnpHsry/IAbvKvN+PvMsqqy0zgkuA+dURu/azPet2skMc+chxQWhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X64AnW36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X64AnW36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB09C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754493593;
	bh=VhFIuIYvtMf2FotHgY48c8XOMv/oCh/M8JdFhQ0i/Lg=;
	h=To:Subject:From:Date:From;
	b=X64AnW36qQS2pmjxmN8ZSl68BwVr82jgfgyOB0nrAUwJCs/Y4Pf2EjtpgTYSjJp/b
	 U3co/RJSMJRMS7RnJ3RKWefRgW1EAIRwK4auAZ+gsNYKks/L57hA0O+1kvsQcs3/Bk
	 S4nFROoK9N7ng9V+QU9DqqzbsIUDFdPaw0SicTxoqb/WwDT8ICIFANF6dkDfdEtt/n
	 hH+lmyFq3r09CFjafsrb5xXU+dGowYlNB7Ab9UG4CPldAHWOhDyLXtkzdxgpsAqupO
	 wqT80BGekuzl4/DUU6Kea3FoM4kqamRv73f8A79krei0wC4tOm5EEfwb01VkHQ3J/2
	 V92cKtRn5XGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C2C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449359357.19024.2098986529346639530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908afe19ac852796cc95d58e81680f3de3676da194e20dffc4afc00869ec31b7
Date: Wed, 06 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754493593
