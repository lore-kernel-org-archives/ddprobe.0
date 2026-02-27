Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D2F286890
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772201694; cv=none; b=dzmqqIUccJeDjaSBy/DOIDOXmG5CZNPfInrqw89zhQ1xCp3M/Dg5jZQvRNl92LElhekrcynmCfH7VGuXh4ZoKaao7EOyJdx0T9uvre69ohDrr31UYladNajW/nsmd4ZQhfDxG9b2IKxVMNKDgAsWr/U4v/nasjgOx1xebvPZME4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772201694; c=relaxed/simple;
	bh=gzhuiaBFVghosDmZA5OMD4LbTH7wO/+j/Kzhkxg5dZw=;
	h=To:Subject:From:Message-Id:Date; b=fvMtXasGk57DoCxaYJH06hhx053Em6pNq6zQXzQiErQLXkXwHb4Xo2N6l/j6qZd5srhhbaetmbzZ3xZU6oS6/wpD1r8B5fNn9PmZ4xMTwnCG21NbQNdjk/9usLvtZMxJC6WThSZmU3HvKxCNVoB5BtuGEaG6I8LNflRzXIQvaoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGQzWTu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGQzWTu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47CFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772201693;
	bh=gzhuiaBFVghosDmZA5OMD4LbTH7wO/+j/Kzhkxg5dZw=;
	h=To:Subject:From:Date:From;
	b=vGQzWTu92KDVZh0bnrXamsJqPjRq5gPlToGCBkYrBxzCUqITqJZmFSxzh125uzWWR
	 HMGXfJ9WPUem2asxhuzdQADRyenoJowiQlfHC/0WzJYUs7Er8TOAp+YNHaD9tsofKx
	 rmDvuXDPhc49VEAZMu8cBf1ANWjzGwTFCd8w469YK7/8cvW6wKPAwddHfv9RS3rWbE
	 Ce1I0ntn+tew1HycwhLrXajuHR1s9qq0Malw7TAeyvJ/AnLtA3iWrWE0znTB7STO9w
	 v7CHc4ojNjlV2hiWMCb9lcFaDKRCreAW2JbFLCCofz2T7DIQvXFbmZ8kFhFSHdUGHY
	 DiVa/d3z+B0Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E973FEFB56
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220169357.3367.10798177133314822420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7496d68bba72c8a0580cb2a90483cf2f6adb532df469e80ad171b02b25c1af0
Date: Fri, 27 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772201693
