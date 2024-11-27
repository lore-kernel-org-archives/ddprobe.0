Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2999A17C96
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732725954; cv=none; b=AnjEn3pjo29/Pxi4XB+mU64qArMHWzVhaPyqDogg3SrDYxShNaMR9PZ+nqk3xfPZfIBkTKkzDiyZQtIuYiVA+rQOsM0F9Myt5tcojLAGqSn4DzconBC9fhmSgNcwOUxRed864n9jkEWDVum/YFTsF/5f0O/5rPgpFhJeuBfqiNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732725954; c=relaxed/simple;
	bh=lukdGzqiYo3NlBkQI2X52h8Fy3uCypZ4RHVl4BU30l8=;
	h=To:Subject:From:Message-Id:Date; b=GpoyLT3wJHg+IjbL2+L4siYeuIPC8WTkOXiLt1wTQiuQxpaDotwXwbiegXuCh/P3ENy5usLCB7SuGiCY0bHRqSHSCjN9qNFjEpiAuIydenOddtCI1SAKg85CjGwxgdhiGeMX3lisAugD2gbgnUHATlZDdFMQiDkXYYjQ95IBgAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2+D7yif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2+D7yif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16EBC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732725953;
	bh=lukdGzqiYo3NlBkQI2X52h8Fy3uCypZ4RHVl4BU30l8=;
	h=To:Subject:From:Date:From;
	b=I2+D7yifc6ReTNiOHORaJSFcwfmyKM/724ChddsRMxA+87uZRNj2SwV/09zneL56+
	 +GTvUlDT97h8JXzBmV7BvWD1TaeAzGS1yURaRqKFw5LownJom3+XtKaXU21Xn/DKbk
	 vPVdswgroQfVVJEcp471613selALvqnKQxbxwWJxLGQnlZVfFioPqMnwA8nVTBzTeu
	 KLheld9K10phnu9sBQYSvziI0t0vf79c8fCuw/57VTNg3HfSaeC4S6ffvF4MjqkjTr
	 LH9hC+72/Bun7a/LTUkRx1pzpluKTevsvm0pr9H2JiLZPNr/eB7fCF5od1TWTwJQBs
	 pQwcls/BWoJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B8D6ACF5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272595359.9429.12096548641332557577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b407d6c01027aec02b4891c2f632e0f8f499f8f738d659e8fc042eb96ba609ff
Date: Wed, 27 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732725953
